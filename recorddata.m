sqnc =[1,4,2,5,7,3,2,1,9,11,15];
%record=length(sqnc);
h=2;
dispsequence=[];
dispsequence(1)=sqnc(1);
record(1) = sqnc(1);
for i=2 : length(sqnc)
    if( sqnc(i)>sqnc(i-1))
        dispsequence =[dispsequence; sqnc(i)];       
    end
end 
disp(dispsequence);