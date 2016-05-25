%function d=recordfinal1(sqnc,k)
sqnc=[1.073,2.298,0.681,0.180,0.496,2.411,0.550,1.532,0.007,0.223];
%sqnc=[0.6615613,0.1956171,0.3117227,0.1162279,0.1879951,1.0401594,0.1597883,0.5124197,0.3681411,1.2828239];
%sqnc=[0.661,0.195,0.311,0.116,0.187,1.040,0.159,0.512,0.368,1.282];
%sonuc=0.1956171, 0.3117227, 0.6615613, 1.0401594
sqnc=unique(sqnc,'stable');
k=1;
dl = length(sqnc);
wndw = sort(sqnc(1:k));
records= wndw(1);
w=[];
        for i=(k + 1):dl % for (i in (k + 1):dl) {            
          if (sqnc(i) > wndw(1)) %if (sqnc[i] > wndw[1])
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
             w=[];
             for m=1:(dl - i + 2)
                  if(sqnc(i)>wndw(m))
                      xx=w;
                      w=[xx,wndw(m)];                      
                  end
              end
            end
            
            %where <- w[length(w)]
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
      
%end
   