function Mistake = Mist_Simp(f, a, b, delta)
syms x
x_extr = [];
extr = [];
if (diff(f,6) ~= 0)
    x_extr = solve (diff(f,5));
    extr = subs(diff(f,4),'x',x_extr);
end
extr(length(extr) + 1) = subs(diff(f,4),'x',a);
extr(length(extr) + 1) = subs(diff(f,4),'x',b);
M4 = max(extr);
Mistake = (1/130)*(b - a) * M4 * delta^4;
end