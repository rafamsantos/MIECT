n=[ 2, 3, 4, 5 ,6 ,7 ,8];
p_defeito = 0.1258;                     %Valor baseado em 1-a)
p_x = 0;

for k = 0:7
   nFact = factorial(7);                 % n!
   nDeno = factorial(k)*factorial(7-k);  % k!(n-k)!
   p = (p_defeito)^(k);                  % p^k
   p_d = (1-p_defeito).^(7-k);           % (1-p)^(n-k)
   
   ptotal = (nFact/nDeno)*p*p_d          % Fórmula distribuição binomial
   p_x = p_x + ptotal;
   
end

p_x