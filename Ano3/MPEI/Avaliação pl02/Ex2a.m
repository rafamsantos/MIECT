N = 1e5 ; % nº de experiencias
n = 8 ; % nº de dados
p1 = 0.002;  % probabilidade defeito componente 1
p2 = 0.005;  % probabilidade defeito  componente 2
pa = 0.01;   % probabilidade de defeito processo de montagem
counter=0;

experiencias_p1 = rand(n,N) > p1  ;     % 1-> sem defeito ; 0 -> com defeito
sucessos_p1 = sum(experiencias_p1);     
experiencias_p2 = rand(n,N) > p2;       % 1-> sem defeito ; 0 -> com defeito
sucessos_p2 = sum(experiencias_p2);     
experiencias_pa = rand(n,N) > pa;       % 1-> sem defeito ; 0 -> com defeito
sucessos_pa = sum(experiencias_pa);     

for i = 1:N
    if sucessos_p1(i)+sucessos_p2(i)+sucessos_pa(i) == 24  % soma cada coluna i de cada matriz, se a soma dos sucessos
        counter = counter+1;                               % for = 24 quer dizer que nao houve brinquedos com defeito
    end
end
prob_semDefeito = counter/N                                    



