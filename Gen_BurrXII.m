function d=Gen_BurrXII(alfa,beta,n)  %"Random number generation from BurrXII(alfa,beta).

for i=1:n
    u=rand(1);
    x(i)=(((1-u)^(-1/beta))-1)^(1/alfa);
end

d=x';