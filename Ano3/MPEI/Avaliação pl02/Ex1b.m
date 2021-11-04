N = 1e5;   % nº de experiencias
n = 8;     % nº de brinquedos
pA = 0.01; % percentagem de defeito devido ao processo de montagem 

experiencias = rand(N,n) > pA;      % 1 -> sem defeito, 0 -> com defeito
nRow_zeros = sum(~experiencias, 2); % conta o nºde de zeros por linha
count = 0;
for i= 1:N
   if nRow_zeros(i) > 0                 % Se o nº de zeros for > 0 ,
       count = count + nRow_zeros(i);   % então o contador soma o número de zeros total da matriz
                                        % ou seja count=
                                        % nRow_zeros(1)+nRow_zeros(2)+...+nRow_zeros(N)
   end
end
count
media = count / N                       % a média aritmética é : soma do nº de 0's de cada fila / nº de filas