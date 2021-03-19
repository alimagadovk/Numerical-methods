function Mistake = Mist_trap(f, a, b, delta)
syms x
x_extr = [];
extr = [];
if (diff(f,4) ~= 0)
    x_extr = solve (diff(f,3));
    extr = subs(diff(f,2),'x',x_extr);
end
extr(length(extr) + 1) = subs(diff(f,2),'x',a);
extr(length(extr) + 1) = subs(diff(f,2),'x',b);
M2 = max(extr);
Mistake = (1/12)*(b - a) * M2 * delta^2;
end