%%function(sqnc, k){
sqnc =[1,4,2,5,7,3,2,1,9,11,15];
% sqnc=[1,4,2,5,7,3,9,11,15];
   k=1; 
   %k=2: 1  2  4  5  7  9 11
   wndw=sqnc;
   sqnc=unique(sqnc);
   dl = length(sqnc);
  % wndw=sort(sqnc(1:k));    
   records = wndw(1); 
   for i=(k + 1):dl
       if (sqnc(i)> wndw(1))
                 if (i <= dl - k + 2) 
                   %   w = which(sqnc(i) > wndw);
                    h=1;
                    wk=1;
                    while(h>0)
                       if (h<=length(wndw) && sqnc(i) > wndw(h))                     
                             
                             w=[wk;wndw(h)];
                             wk=w;
                             h=h+1;
                        
                       else
                           h=-1; 
                       end
                    end
                else 
                   %   w = which(sqnc[i] > wndw[1:(dl - i + 2)]);                   
                   for h=1:(dl - i + 2)
                       if(sqnc(i) > wndw(h))
                         wd=w;
                         w=[wd;wndw(h)];  
                       end                        
                       
                    end
                 end
                 w=unique(w);
                 hw=length(w); 
                if(hw>1)
                 where = w(hw);  
                 xxx=wndw(2:where);
                 wndw=xxx;
                                 
                    %wndw = wndw(2:where); 
                    % wndw=xw;
                     xw=1;
                     wndw(where) = sqnc(i);
                     wd=records;
                     records = [wd; wndw(1)];
                     w=1;
                    
                end
       end
       
   end
                 
            disp(records);
                         
        
       

        