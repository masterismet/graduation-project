%rng shuffle;
rng('shuffle');
%rng(0,'twister');
%rng default;
%rng(1);
%rng('default');
m=0;
%r = round(1+19*rand(1,10,'single'));
%r=unique(r);
%disp(r);
while(m>=10)
r = round(20*rand(1,11,'single')+0);
disp(r);
m=lenght(unique(r));
end
%disp(r);