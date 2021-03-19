function integr = trapec(f, a, b, delta)
%delta = 0.01;
h = a:delta:b;
J = 0;
for i = 1:length(h) - 1
    J = J + (subs(f,'x',h(i)) + subs(f,'x',h(i + 1)));
end
integr = 0.5 * delta * J;
end