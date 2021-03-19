function dihot(fun, a, b)
syms x
mid = (b + a) / 2;
n = 0;
while (((b - a) / 2^n) <= 0.00001)
if ((subs(fun, 'x', a)*subs(fun, 'x', b) < 0) && (subs(fun, 'x', mid) * subs(fun, 'x', a) > 0))
    a = mid;
else
if ((subs(fun, 'x', a)*subs(fun, 'x', b) < 0) && (subs(fun, 'x', mid) * subs(fun, 'x', b) > 0))
    b = mid;
end
end
end
subs(fun, 'x', a)
end
