function record(~,~)
sqnc =[1,4,2,5,7,3,2,1,9,11,15];
w=[];
m=[];
w(1)=sqnc(1);
k=2;
rec=length(sqnc);
m=LL(k,sqnc);
for n=2:rec
    n=m(n);
    w=[w,X(n-k+1,n,sqnc)];
end
disp(w);
end
function [l]=LL(k,sqnc)
l(1)=k;
for i=1:length(sqnc)
    j=l(i)+1;
    wa=X(j-k,j-1,sqnc);
    if(sqnc(j) >wa)
        l(1+i)=wa;
    else
        l(i+1)=l(i)+1;
    end
end

end
function wa=L(n,k,sqnc)
wa=k;
for i=1:n 
    j=wa+1; 
    h=j;
    while(sqnc(j) >X(j-k,j-1,sqnc))
        j=j+1;
    end   
    
       if(j>sqnc(j))
           wa=sqnc(j);
       else
           wa=h;
       end
    

end

end

function  minv = X(i,j,sqnc)
minv=sqnc(i);
if(i==j)
    minv=sqnc(i);
else
for h=i+1:j
    if(minv>sqnc(h))
        minv=sqnc(h);       
    end 
   
end
end
end




