syms x y
Eyler(y + x^2,0,0,0,1000,30)
%%
EylerSuP(sqrt(x),0,0,0,10,100)
%%
hold on
grid on
fplot ('x^3 / 3', [0 10])
%%
EylerPrC(x^2,0,0,0,10,100)