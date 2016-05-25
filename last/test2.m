sqnc=[0.6615613,0.1956171,0.3117227,0.1162279,0.1879951,1.0401594,0.1597883,0.5124197,0.3681411,1.2828239];
k=2;
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
                      w=[xx,wndw(h)];
                      
                  end
              end
          
            else 
             % w <- which(sqnc[i] > wndw[1:(dl - i + 2)])
                    
              for m=1:(dl - i + 2)
                  if(sqnc(i)>wndw(h))
                      xx=w;
                      w=[xx,wndw(h)];                      
                  end
              end
            end
          hw=length(w);            
            where=w(hw); 
            where=fix(where);
            if(where==0)
                where=1;
            end 
           if (where > 1&& where<length(wndw)) %(where > 1)
             % wndw[1:(where - 1)] <- wndw[2:where]
             y=wndw(2:where);            
             wndw=y;             
           end           
           wndw(where)=sqnc(i);             
           nn=records;
           records=[nn,wndw(1)];
          % w=[];
            
            
end
end
      %records=unique(records,'stable');      
      disp(records); 