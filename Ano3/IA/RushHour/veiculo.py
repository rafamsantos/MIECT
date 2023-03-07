"""
Guilherme Craveiro nMec 103574
Rafael Santos nMec 98466
"""
class Veiculo:

    def __init__(self,id,coords,movimento,tamanho):
        self.id=id
        self.coords=coords
        self.movimento=movimento
        self.tamanho=tamanho

    def __str__(self):
        return f"id:{self.id} position:{self.coords} movement:{self.movimento} size:{self.tamanho} "

