function d=Record_matrix (alfa,beta,n)
r=[];
while (length(r)< n)
k = 2;
sqnc=Gen_BurrXII(alfa,beta,50);
sqnd=sqnc;
r=(recordfinal1(sqnd, k));                                                         

end
m=lenght(r);
d=transpose(randsample(m,n));
d=sort(d);
end 
