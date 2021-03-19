function Nuton(fun,x0)
syms x
xn = x0;
while logical(abs(xn - subs(x - fun / diff(fun), 'x', xn)) > 10^(-5))
xn = subs(x - fun / diff(fun), 'x', xn);
end
vpa(xn, 5)
end