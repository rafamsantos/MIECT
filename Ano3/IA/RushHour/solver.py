"""
Guilherme Craveiro nMec 103574
Rafael Santos nMec 98466
"""
from common import *
from veiculo import *
import json
from collections import deque
import logging
import time

logging.basicConfig(
    format='%(asctime)s - %(message)s',
    level=logging.INFO,
    encoding='utf-8',
    filename='agente.log'
)

logging.info('----------------------------Started------------')

class Mapa(Map):
    def __init__(self, txt: str):
        txt=txt.replace("'","")
        Map.__init__(self,txt)
        txt=repr(self)
        
        self.nr_mapa=int(txt.split(" ")[0])
        #dicionário com os carros
        self.carros={}
        #lista dos carros do nivel
        self.carros_encontrados=[]
        linha=0
        coluna=0
        #string do nivel
        self.nivel=txt.split(" ")[1]
        #percorrer o nivel e construir o modelo
        for l in self.nivel:
            #encontrou um carro novo
            if l!='o' and l!='x' and self.carros_encontrados.count(l)==0:
                self.carros_encontrados.append(l)
                coords=Coordinates(coluna,linha)
                if self.nivel[linha*self.grid_size+coluna+1]!=l:
                    movimento='v'
                else:
                    movimento='h'
                veiculo=Veiculo(l,coords,movimento,self.nivel.count(l))
                self.Adicionar(veiculo)

            coluna +=1
            if(coluna>=self.grid_size):
                coluna=0
                linha +=1

    def __hash__(self):
        return hash(self.__repr__())

    def __eq__(self, other):
        return self.__hash__() == other.__hash__()

    def __ne__(self, other):
        return not self.__eq__(other)

    def Adicionar(self,veiculo):
        self.carros[veiculo.id]=veiculo

    def GetCarCoords(self,id):
        if id in self.carros:
            #return self.carros[id].coords
            return self.piece_coordinates(id)[0]
        return None
    
    #verifica se as coordenadas estão dentro do mapa
    def CoordsValid(self,coords):
        if coords.x<0 or coords.x>=self.grid_size:
            return False
        if coords.y<0 or coords.y>=self.grid_size:
            return False
        return True

    #devolve os vizinhos do carro
    def GetCarNeighbours(self,id):
        veiculo = self.carros[id]
        pos = veiculo.coords
        left = None
        right = None
        if(veiculo.movimento=='h'):
            pos.x -=1
            if self.CoordsValid(pos):
                left = self.get(pos)
            pos.x +=(1 + veiculo.tamanho)
            if self.CoordsValid(pos):
                right = self.get(pos)
        else:
            pos.y-=1
            if self.CoordsValid(pos):
                left = self.get(pos)
            pos.y += (1+veiculo.tamanho)
            if self.CoordsValid(pos):
                right = self.get(pos)
        return (left,right)
    
    #iterator
    #Utilizado para gerar os movimentos possiveis da solução
    #faz uma cópia do mapa e devolve uma copia com um movimento aplicado
    #desfaz o movimento e tenta o próximo movimento
    def NextMove(self):
        #copia do board
        mapa_atual=Mapa(repr(self))
        for c in self.carros_encontrados:
            left,right = mapa_atual.GetCarNeighbours(c)
            veiculo=mapa_atual.carros[c]
            #se é horizontal tenta mover na para a esquerda/direita
            if veiculo.movimento=="h":
                if left=="o":
                    mapa_atual.move(c,Coordinates(-1,0))
                    yield mapa_atual
                    mapa_atual=Mapa(repr(self))

                if right=="o":
                    mapa_atual.move(c,Coordinates(1,0))
                    yield mapa_atual
                    mapa_atual=Mapa(repr(self))

            #se é vertical tenta mover para cima/baixo
            elif veiculo.movimento=="v":
                if left=="o":
                    mapa_atual.move(c,Coordinates(0,-1))
                    yield mapa_atual
                    mapa_atual=Mapa(repr(self))

                if right=="o":
                    mapa_atual.move(c,Coordinates(0,1))
                    yield mapa_atual
                    mapa_atual=Mapa(repr(self))

"""Classe do agente que tenta resolver o puzzle"""
class Solver:
    def __init__(self,websocket): 
        self.websocket=websocket
        self.grid_anterior=""
        self.solucoes=""
        self.passo_solucao=0
        self.passos_solucao=[]
        self.idx_solucao_atual=0

    def MapaNovo(self,nivel,dimensoes,cursor,selecionado):
        #Mapa a resolver
        self.mapa=Mapa(nivel)
        #string nível
        self.nivel=repr(self.mapa).split(" ")[1]
        #tamanho do mapa W,H
        self.grid=dimensoes.copy()
        logging.info(f"Dimensões {self.grid}")
        #limpa as posições de saída do puzzle
        self.posicoes_saida={}
        #posição do cursor
        #self.cursor=Coordinates(cursor[0],cursor[1])
        #carro selecionado
        #self.selecionado=selecionado

    #Move o cursor para o veículo
    #Seleciona-o
    def MoveCursorToCarAndSelect(self,id):
        #carro que está na posição do cursor
        #carro = self.mapa.get(self.cursor)
        #print(type(self.solucoes[self.idx_solucao_atual][self.passo_solucao]))
        if type(self.solucoes[self.idx_solucao_atual][self.passo_solucao]) is str:
            carro = Mapa(self.solucoes[self.idx_solucao_atual][self.passo_solucao]).get(self.cursor)
            carro_pos=Mapa(self.solucoes[self.idx_solucao_atual][self.passo_solucao]).GetCarCoords(id)
        else:
            carro = self.solucoes[self.idx_solucao_atual][self.passo_solucao].get(self.cursor)
            carro_pos=self.solucoes[self.idx_solucao_atual][self.passo_solucao].GetCarCoords(id)
        #é o carro a mover? Seleciona-o
        if carro==id:
            logging.debug("Seleciona carro")
            return " "
        #move o cursor na direção do carro
        #carro_pos=self.mapa.GetCarCoords(id)
        
        logging.info(f"Mover o cursor para o carro {id} cursor {self.cursor} carro {carro_pos}")
        if carro_pos.x<self.cursor.x:
            return "a"
        if carro_pos.x>self.cursor.x:
            return "d"
        if carro_pos.y<self.cursor.y:
            return "w"
        if carro_pos.y>self.cursor.y:
            return "s"
        if (carro_pos.x==self.cursor.x and carro_pos.y==self.cursor.y):
            return " "
        #exit()

    #Utilizado para converter os mapas da solução em movimentos dos veículos
    def ConverterSolucaoEmMovimentos(self):
        solucao=self.solucoes[self.idx_solucao_atual]
        self.passos_solucao=[]
        for i in range(len(solucao)-1):
            solucao1 = Mapa(repr(solucao[i]))
            solucao2 = Mapa(repr(solucao[i+1]))
            #procurar o carro a mover
            for v in solucao1.carros_encontrados:
                pos1 = solucao1.carros[v]
                pos2 = solucao2.carros[v]
                if pos1.coords.x>pos2.coords.x:
                    self.passos_solucao.append({
                        'veiculo': v,
                        'movimento': Coordinates(-1,0)
                    })
                if pos1.coords.x<pos2.coords.x:
                    self.passos_solucao.append({
                        'veiculo': v,
                        'movimento': Coordinates(1,0)
                    })
                if pos1.coords.y>pos2.coords.y:
                    self.passos_solucao.append({
                        'veiculo': v,
                        'movimento': Coordinates(0,-1)
                    })
                if pos1.coords.y<pos2.coords.y:
                    self.passos_solucao.append({
                        'veiculo': v,
                        'movimento': Coordinates(0,1)
                    })

    #vai enviar o comando que permite aproximar o cursor do carro a mover
    #selecionar o carro
    #mover o carro
    def MoveCar(self,id: str,direcao: Coordinates):
        #carro selecionado não é o escolhido tira o selecionado
        if self.selecionado!=id and self.selecionado!="":
            logging.info(f"Tira o selecionado de {self.selecionado}")
            self.selecionado=""
            return " "
        #nenhum carro selecionado
        if self.selecionado=="":
            logging.info("Nenhum carro selecionado")
            return self.MoveCursorToCarAndSelect(id)
        #O cursor já está no carro e o carro está selecionado
        #avança para o passo seguinte
        logging.info(f"Mover carro {id}")
        #só passa para o passo seguinte da solução se mover o carro 
        self.passo_solucao += 1
        #mover o carro selecionado
        if direcao.x<0: return "a"
        if direcao.x>0: return "d"
        if direcao.y>0: return "s"
        if direcao.y<0: return "w"
    #corrigido para níveis maiores/menores
    def ConverteEmCoords(self,pos):
        y = int(pos/ self.grid[0])
        x = int(pos % self.grid[1])
        return (x,y)
    #corrigido para níveis maiores/menores
    def ConverteEmPosicao(self,pos):
        posicao=pos[1]*self.grid[0]+pos[0]
        return posicao

    #versão para tuplos
    #iterator
    #Utilizado para gerar os movimentos possiveis da solução
    #faz uma cópia do mapa e devolve uma copia com um movimento aplicado
    #desfaz o movimento e tenta o próximo movimento
    def NextMove(self,txt: str):
        #copia do board
        nr_nivel=txt.split(" ")[0]
        mapa_atual=txt.split(" ")[1]
        movimentos = txt.split(" ")[2]
        #print(type(mapa_atual))
        #print(f"Mapa atual {mapa_atual}")
        carros_encontrados=set(mapa_atual)
        #print(f"Carros encontrados {carros_encontrados}")
        #percorrer todos os carros
        for c in carros_encontrados:
            if c=='o' or c=='x':
                continue
            pos_init = mapa_atual.find(c)
            pos_final = mapa_atual.rfind(c)
            #print(f"Posicao inicial {pos_init}")
            #print(f"Posicao final {pos_final}")
            coords_init=self.ConverteEmCoords(pos_init)
            coords_final=self.ConverteEmCoords(pos_final)
            #print(f"Coordenadas inicial {coords_init}")
            #print(f"Coordenadas final {coords_final}")
            #tamanho_carro=mapa_atual.count(c)
            #se linha igual move na horizontal
            if coords_init[1]==coords_final[1]:
                #print("movimento horizontal")
                if coords_init[0]>0 and mapa_atual[self.ConverteEmPosicao((coords_init[0]-1,coords_init[1]))]=='o':
                    #print(f"Move para a esquerda carro {c}")
                    indice=self.ConverteEmPosicao((coords_init[0]-1,coords_init[1]))
                    mapa_atual = mapa_atual[:indice] + c + mapa_atual[indice+1:]
                    indice = self.ConverteEmPosicao((coords_final[0],coords_final[1]))
                    mapa_atual = mapa_atual[:indice] + 'o' + mapa_atual[indice+1:]
                    yield nr_nivel+" "+ mapa_atual+" "+movimentos
                    mapa_atual=txt.split(" ")[1]

                if coords_final[0]<self.grid[0]-1 and mapa_atual[self.ConverteEmPosicao((coords_final[0]+1,coords_final[1]))]=='o':
                    #print(f"Move para a direita carro {c}")
                    indice=self.ConverteEmPosicao((coords_final[0]+1,coords_final[1]))
                    mapa_atual=mapa_atual[:indice] + c + mapa_atual[indice+1:]
                    indice=self.ConverteEmPosicao((coords_init[0],coords_init[1]))
                    mapa_atual=mapa_atual[:indice] + 'o' + mapa_atual[indice+1:]
                    #print(mapa_atual)
                    yield nr_nivel+" "+ mapa_atual+" "+movimentos
                    mapa_atual=txt.split(" ")[1]
                    
            #se é vertical tenta mover para cima/baixo
            else: 
                #print("movimento horizontal")
                if coords_init[1]>0 and mapa_atual[self.ConverteEmPosicao((coords_init[0],coords_init[1]-1))]=='o':
                    #print(f"move para cima carro {c}")
                    indice=self.ConverteEmPosicao((coords_init[0],coords_init[1]-1))
                    mapa_atual = mapa_atual[:indice] + c + mapa_atual[indice+1:]
                    indice = self.ConverteEmPosicao((coords_final[0],coords_final[1]))
                    mapa_atual = mapa_atual[:indice] + 'o' + mapa_atual[indice+1:]
                    yield nr_nivel+" "+ mapa_atual+" "+movimentos
                    mapa_atual=txt.split(" ")[1]
                    
                if coords_final[1]<self.grid[1]-1 and mapa_atual[self.ConverteEmPosicao((coords_final[0],coords_final[1]+1))]=='o':
                    #print(f"move para baixo o carro {c}")
                    indice = self.ConverteEmPosicao((coords_final[0],coords_final[1]+1))
                    mapa_atual = mapa_atual[:indice] + c + mapa_atual[indice+1:]
                    indice = self.ConverteEmPosicao((coords_init[0],coords_init[1]))
                    mapa_atual = mapa_atual[:indice] + 'o' + mapa_atual[indice+1:]
                    yield nr_nivel+" "+ mapa_atual+" "+movimentos
                    mapa_atual=txt.split(" ")[1]
    
    """
        Código para enviar e receber dados do servidor
    """
    #envia o comando
    async def SendKey(self,key):
        await self.websocket.send(json.dumps({"cmd": "key", "key": key}))

    #Recebe o estado do jogo do servidor
    async def GameState(self):
        self.state = json.loads(await self.websocket.recv())

    """
        Quando o servidor altera o mapa
        Procuramos um passo da solução
        igual ao estado atual
        para evitar recalcular a solução
        Devolve o nr da solução e o passo
        ou -1,-1 quando não existe nenhuma igual
    """
    def ProcurarGridPassos(self,grid):
        #ainda não há nenhuma solução
        if self.idx_solucao_atual<0:
            return (-1,-1)

        if len(self.solucoes)==0:
            return (-1, -1)

        #escolhe a solução atual
        solucao=self.solucoes[self.idx_solucao_atual]
        #se o nr do nivel mudou tem de recalcular
        nsolucao=int(str(solucao[0])[0:2])
        ngrid=int(str(grid[0:2]))
        if nsolucao!=ngrid:
            return (-1, -1)

        #Procurar solução nos passos da solução atual
        for i in range(len(solucao)):
            s = solucao[i]
            if str(s)==str(grid):
                return (self.idx_solucao_atual, i)
        
        #Procurar solução nos passos de todas as soluções
        for s in range(len(self.solucoes)):
            for i in range(len(self.solucoes[s])):
                if str(self.solucoes[s][i])==str(grid):
                    return (s,i)
        
        #não foi encontrada
        return (-1, -1)

    #Devole o indice da melhor solução
    def MelhorSolucao(self):
        m = -1
        mi = 0
        i = 0
        for s in self.solucoes:
            if i==0 or len(s)<m:
                m=len(s)
                mi=i
            i=i+1
        return mi

    #loop do jogo
    async def MainLoop(self):
        #receber o estado do jogo
        await self.GameState()

        #atualizar a posição do cursor
        self.cursor=Coordinates(self.state.get("cursor")[0],self.state.get("cursor")[1])
        
        #carro selecionado
        self.selecionado=self.state.get("selected")
        
        #grid recebida
        grid=self.state.get("grid")
        logging.info(f"Mapa recebido {grid}")
        #se mapa não é igual ao enviado 
        # procurar se a grid que o servidor envio existe num dos passos da solução
        # recalcular as soluções
        if self.grid_anterior!=self.state.get("grid") or (self.passo_solucao>=len(self.passos_solucao)):
            s, i = self.ProcurarGridPassos(grid)
            if i<0:
                logging.info("=================================Gerar nova solução")
                self.MapaNovo(grid,self.state.get("dimensions"),self.state.get("cursor"),self.state.get("selected"))
                #criar as possiveis solucoes com algoritmo BFS
                results = self.breadth_first_search(self.mapa,max_depth=50,optimize=1)
                logging.info("=================================Nova solução gerada")
                #guarda a solução
                self.solucoes=results["solutions"]
                self.idx_solucao_atual=self.MelhorSolucao()
                logging.info(f"Solução selecionada {self.solucoes[self.idx_solucao_atual]}")
                self.passo_solucao=0
                self.passos_solucao=[]
                #converte a solução em movimentos
                logging.info("================================Converter para passos")
                self.ConverterSolucaoEmMovimentos()
                logging.info("================================Terminada a conversão")
            else:
                logging.info("===============================Não precisou de gerar nova solução")
                self.passo_solucao=i
                if s!=self.idx_solucao_atual:
                    self.ConverterSolucaoEmMovimentos()
                self.idx_solucao_atual=s-1

        #envia o próximo comando
        if self.idx_solucao_atual>=len(self.solucoes):
            self.idx_solucao_atual = len(self.solucoes)-1
        
        if self.idx_solucao_atual<0:
            return

        if self.passo_solucao>=len(self.passos_solucao): 
            self.passo_solucao = len(self.passos_solucao)-1 

        if self.passo_solucao<0:
            return

        tecla = self.MoveCar(self.passos_solucao[self.passo_solucao]['veiculo']
                            ,self.passos_solucao[self.passo_solucao]['movimento'])

        #guarda a grid atualizada para comparar com a que vai receber do servidor
        self.grid_anterior=str(self.solucoes[self.idx_solucao_atual][self.passo_solucao])
        if tecla is not None:
            await self.SendKey(tecla)

    def PosicoesSaida(self):
        if (self.posicoes_saida is None or len(self.posicoes_saida)==0):
            for i in range(self.grid[0]):
                saida=(i+1)*self.grid[0]-1
                self.posicoes_saida[saida]=saida
            logging.info(f"Posicoes de saída {self.posicoes_saida}")
        return self.posicoes_saida

    """
    Procurar soluções para o mapa
    Devolve um dicionário com os campos:
        visited: the number of configurations visited in the search
        solutions: paths to the goal state
        depth_states: the number of states visited at each depth

    Recebe:
        mapa: O mapa 
        max_depth: Profundidade máxima do algoritmo (por omissão=50)
        max_time: tempo máximo que gasta na procura das soluções
        otimização: 0 usa objetos 1 usa tuplos
        nr_solucoes: nr de soluções a gerar
    """
    def breadth_first_search(self,mapa, max_depth=50, max_time=2, optimize=1, nr_solucoes=2):

        visited = set()
        solutions = list()
        depth_states = dict()
   
        queue = deque()
        
        t0 = time.perf_counter()
        if optimize==0:
            queue.appendleft((mapa, tuple()))
            while len(queue) != 0:
                board, path = queue.pop()
                new_path = path + tuple([board])

                depth_states[len(new_path)] = depth_states.get(len(new_path), 0) + 1

                if len(new_path) >= max_depth:
                    logging.info("BFS interrompido pelo depth")
                    if len(solutions)==0:    #se não tem nenhuma solução guarda o caminho atual?
                        solutions.append(new_path)
                    break
                
                t1 = time.perf_counter()
                if t1-t0>max_time:
                    print(t1-t0)
                    logging.info("BFS interrompido pelo tempo")
                    if len(solutions)==0:    #se não tem nenhuma solução guarda o caminho atual?
                        solutions.append(new_path)
                    break

                if board in visited:
                    continue
                else:
                    visited.add(board)

                if board.test_win():
                    solutions.append(new_path)
                    if(len(solutions)>=nr_solucoes):
                        logging.info(f"Soluções encontradas em {t1-t0} segundos - {solutions}")
                        break
                else:
                    #para cada movimento adiciona uma cópia do board à fila
                    for move in board.NextMove():
                        #testar se o movimento já foi aberto?

                        #testar se o movimento já existe no caminho
                        if str(move) not in str(new_path) and move not in visited:
                            #logging.info(f"Novo caminho: {move} => {str(new_path)}")
                            queue.appendleft((move, new_path))

            logging.info(f"Soluções encontradas em {t1-t0} segundos - {solutions} - visitados {len(visited)} ")
            return {'visited': visited,
                    'solutions': solutions,
                    'depth_states': depth_states}
        #tuplos
        if optimize==1:
            mapa_inicial=repr(mapa)
            queue.appendleft((mapa_inicial, tuple()))
            while len(queue) != 0:
                board, path = queue.pop()
                new_path = path + tuple([board])

                depth_states[len(new_path)] = depth_states.get(len(new_path), 0) + 1

                if len(new_path) >= max_depth:
                    logging.info("BFS interrompido pelo depth")
                    if len(solutions)==0:  #se não tem nenhuma solução guarda o caminho atual?
                        solutions.append(new_path)
                    break
                
                t1 = time.perf_counter()
                if t1-t0>max_time:
                    print(t1-t0)
                    logging.info("BFS interrompido pelo tempo")
                    if len(solutions)==0:   #se não tem nenhuma solução guarda o caminho atual?
                        solutions.append(new_path)
                    break

                if board in visited:
                    continue
                else:
                    visited.add(board)

                #test_win
                just_board = board.split(" ")[1]
                player_pos=[pos for pos,char in enumerate(just_board) if char=='A']
                if  any( p in self.PosicoesSaida() for p in player_pos):        
                    solutions.append(new_path)
                    if(len(solutions)>nr_solucoes):
                        break 
                else:
                    #para cada movimento adiciona uma cópia do board à fila
                    for move in self.NextMove(board):
                        #testar se já foi aberto?

                        #testar se o movimento já existe no caminho
                        if str(move) not in str(new_path) and str(move) not in visited:
                            #logging.info(f"Novo caminho: {move} => {str(new_path)}")
                            queue.appendleft((str(move), new_path))

            logging.info(f"Soluções encontradas em {t1-t0} segundos - {solutions} - visitados {len(visited)} ")
            return {'visited': visited,
                    'solutions': solutions,
                    'depth_states': depth_states}
