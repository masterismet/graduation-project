%function d=recordfinal1(sqnc,k)
%sqnc=[1,4,2,5,7,3,9,11,15];
sqnc=[1,3.4,6.4,6.4,5,9.3,11.5,6,7];
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
                      w=[xx,h];
                      
                  end
              end
          
            else 
             % w <- which(sqnc[i] > wndw[1:(dl - i + 2)])
                    
              for m=1:(dl - i + 2)
                  if(sqnc(i)>wndw(m))
                      xx=w;
                      w=[xx,m];                      
                  end
              end
            end
           
            %where <- w[length(w)]
            hw=length(w);           
            where = w(hw);  
            
           if (where > 1&& where<=length(wndw))
             % wndw[1:(where - 1)] <- wndw[2:where]
             y=wndw(2:where);            
             wndw=y;             
          
                      
            wndw(where)=sqnc(i);
           % xx=[];
           % disp(wndw);
             s=1;
             d=wndw(length(wndw)-k+1);
            while(s>0)               
                if(d>0)
                   s=-1;
                else
                    d=wndw(length(wndw)-k+1-s);
                    s=s+1;
                end 
            end
             
            records =[records,d];
            end
           
            
end
end
    records=unique(records,'stable'); 
    disp(records);
        
%end
   