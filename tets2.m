function tets2() 
alfa=[3.1007,2.6327,2.6986,2.8201]; %reel value 
beta=[3.4367,8.4637,7.4045,7.3502];%reel value
x=Gen_BurrXII(alfa(1),beta(1),1000);
x=sort(x);
h1=(alfa(1)*beta(1)*x.^(alfa(1)-1))/(1+x.^alfa(1));%reel value
h2=(alfa(2)*beta(2)*x.^(alfa(2)-1))/(1+x.^alfa(2));%mle
h3=(alfa(3)*beta(3)*x.^(alfa(3)-1))/(1+x.^alfa(3));%lindley
h4=(alfa(4)*beta(4)*x.^(alfa(4)-1))/(1+x.^alfa(4));%mcmc
plot(x,h1,x,h2,'*',x,h3,'b--o',x,h4,'c*');
%legend('reel value','mle','lindley');%,'mcmc');
grid
xlabel('x');
title('values');

end
