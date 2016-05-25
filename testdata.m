%function d=Record_matrix (alfa,beta,n)
alfa=3;
beta=2;
n=10;
r=[];
d=[];
while (length(r)< n)
k = 2;
sqnc=Gen_BurrXII(alfa,beta,50);
sqnd=sqnc;
r=(recordfinal1(sqnd, k));                                                         

end
m=lenght(r);
indmat=transpose(randsample(m,n));
indmat=sort(indmat);

%d=r(1:n);
disp(r);
%end 