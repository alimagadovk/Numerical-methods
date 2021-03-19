function Theor_Mist = Mistake(a, b, p, f)
syms x
w = 1;
h = a:0.1:b;
for i = 1:length(p)
    w = w * (x - p(i));
end
% df = diff(f, length(p) + 1);
% extr = solve(df);
% M = max(subs(diff(f, length(p)),'x',extr))
% figure(4)
% fplot(df, [a b])
% hold off
R = (subs(diff(f,length(p)),'x',h) ./ factorial(length(p))) .* subs(w,'x',h);
% R = max((M / factorial(length(p))) .* subs(w,'x',h));
Theor_Mist = vpa(max(R));
end