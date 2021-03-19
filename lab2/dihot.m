function dihot(fun, a, b)
syms x
n = 0;
if logical(subs(fun, 'x', a)*subs(fun, 'x', b) < 0)
while (((b - a) / 2^n) > 10^(-9))
    mid = (b + a) / 2;
if (subs(fun, 'x', mid) * subs(fun, 'x', a) > 0)
    a = mid;
else
if (subs(fun, 'x', mid) * subs(fun, 'x', b) > 0)
    b = mid;
end
end
n = n + 1;
end
a
end
end