function grafik() 
alfa=3.1007;%reel value 
beta=3.4367;%reel value
x=Gen_BurrXII(alfa,beta,2000);
x=sort(x);
tip='g';
fonksiyon1(alfa,beta,tip,x)%reel
hold on;
alfa=3.3695;
beta=3.8085;
tip='r';
fonksiyon1(alfa,beta,tip,x)%mle
hold on;
alfa =3.3933;
beta=3.8728;
tip='b';
fonksiyon1(alfa,beta,tip,x)%lindley
grid on
title('N=15   K=1');
xlabel('x');
ylabel('y');
end

function fonksiyon1(alfa,beta,tip,x)
y=(alfa*beta*x.^(alfa-1))/(1+x.^alfa);
plot(x,y,tip);

end