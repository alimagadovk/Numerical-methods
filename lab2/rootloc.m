function rootloc(fun, a, b)
hold on
syms x
dx = 0.1;
n = (b - a) / dx;
for i=1:n;
    x(i) = a + (i - 1)*dx;
    y(i) = subs(fun, 'x', x(i));
    if (abs(y(i)) < 10^(-2))
        line ([x(i) - 0.4, x(i) + 0.4], [0 0], 'Color', 'red')
    end
end
plot(x, y);
grid on
axis ([a b a b]);
end
