syms x;
P = 1;
for y=1:20
   P = P * (x - y);
end
P

%%

p = poly (1:20)
roots(p)
p(2) = p(2) + 10^(-7);
roots(p)

%%

2^1023
2^1024
%%
realmax
realmin
%%
format long e
sqrt(2)
%%
10^8+10^-8



%%

for n=0:100
    E = 2^(-n);
   res = (1 + E - 1) / E;
   if res ~= 1
       res
       n
       break
   end
end
res


%%
clear
clc
format short
I = exp(-1);
for n=2:30
   I = 1 - n * I;
   fprintf('I_%d = %f\n', n, I)
end
%%
clear
clc
format short
I = 0;
for n=199:(-1):91
   I = (1 - I) / n;
   fprintf('I_%d = %f\n', n, I)
end

%%

x = pi/2;
res = 0;
k = 0;
f = 1;
abs(sin(x) - res) > 10^(-17)
while k < 5
    for i = 1:2*k + 1
if k ~= 0
       f = f * k;
end
    end
    res = res + ((-1)^k)*(x^(2*k + 1)) / i
k = k + 1
end
res
   
