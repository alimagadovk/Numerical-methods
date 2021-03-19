function integr = Simpson(f, a, b, delta)
%delta = 0.01;
h = a:delta:b;
J = 0;
for i = 1:length(h) - 1
    J = J + (subs(f,'x',h(i)) + 4 * subs(f,'x',h(i) + delta / 2) + subs(f,'x',h(i + 1)));
end
integr = (1/6) * delta * J;
end