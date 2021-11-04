N = 1e5 ; % nº de experiencias
n = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]; % nº de dados
p1 = 0.002;  % probabilidade defeito componente 1
p2 = 0.005;  % probabilidade defeito  componente 2
pa = 0.01;   % probabilidade de defeito processo de montagem


for k= 1:length(n)
    experiencias_p1 =sum( rand(n(k),N) > p1 ) ;     % 1-> sem defeito ; 0 -> com defeito
    experiencias_p2 = sum( rand(n(k),N) > p2 );       % 1-> sem defeito ; 0 -> com defeito
    experiencias_pa = sum( rand(n(k),N) > pa );       % 1-> sem defeito ; 0 -> com defeito
    
    count = 0;
    
    for i = 1:N
        if experiencias_p1(i)+experiencias_p2(i)+experiencias_pa(i) < n(k)+n(k)+n(k)  
            count = count+1;                                                
        end
    end
   
    prob(k)= count/N;
  
end
prob_semDefeito = prob
plot(n,prob_semDefeito,"k*-")
