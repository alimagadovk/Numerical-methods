function res=f(fun, p, a, b)
syms x
dx = 0.1;
n = (b - a) / dx;
xi = a;
for i=1:n;
    xx(i) = xi;
    y(i)=subs(fun, 'x', xx(i));
    xi = xi + dx;
end
plot(xx, y);
hold on
grid on
rts = roots(p);
for i = 1:3
   line ([rts(i) - 0.5, rts(i) + 0.5], [0 0], 'Color', 'red')
end
end
