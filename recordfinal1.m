%function d=recordfinal1(sqnc,k)
%sqnc=[1,4,2,5,7,3,9,11,15];
sqnc=[1,3.4,6.4,6.4,5,9.3,11.5,6,7];
%sqnc=[1.073,2.298,0.681,0.180,0.496,2.411,0.550,1.532,0.007,0.223];
%sqnc=[0.6615613,0.1956171,0.3117227,0.1162279,0.1879951,1.0401594,0.1597883,0.5124197,0.3681411,1.2828239];
k=3;
sqnc=unique(sqnc,'stable');
dl = length(sqnc);
wndw = sort(sqnc(1:k));
records= wndw(1);
  w=[];
        for i=(k + 1):dl 
          if (sqnc(i) > wndw(1)) 
            if (i <= dl - k + 2) 
              %w <- which(sqnc[i] > wndw)
              for h=1:length(wndw)
                  if(sqnc(i)>wndw(h))
                      xx=w;
                      w=[xx,i-k+h];
                      
                  end
              end
          
            else 
             % w <- which(sqnc[i] > wndw[1:(dl - i + 2)])
                    
              for m=1:dl - i + 2
                  if(sqnc(i)>wndw(m))
                      xxx=w;
                      w=[xxx,i-k+m];                      
                  end
              end
            end
           
            %where <- w[length(w)]
            hw=length(w);           
            where = w(hw);         
           if (where > 1)
             % wndw[1:(where - 1)] <- wndw[2:where]
             y=wndw(2:where);            
             wndw=y;
           end
             wndw(where)=sqnc(i);         
            
           % xx=[];
            disp(wndw);
            xx=records;
            records =[xx,wndw(1)];         
           
            
end
 end
     %records=unique(records,'stable');    
      disp(records);  
%end
   