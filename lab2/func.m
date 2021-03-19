function func(x0, a)
syms x
fun = 0.5*(a / x + x);
xf = x0;
flag = false;
while (abs(x0 - subs(fun, 'x', x0)) > 10^(-16))
x0 = subs(fun, 'x', x0);
dx = abs(x0 - subs(fun, 'x', x0));
a = x0 - dx;
b = x0 + dx;
if (flag == false)
    flag = true;
    phi(1) = subs(diff(fun,1),'x',a);
    if logical(diff(fun,2) ~= 0)
    extr = subs(diff(fun,1),'x',solve(diff(fun,2)));
    phi(2:length(extr) + 1) = extr;
    phi(2 + length(extr)) = subs(diff(fun,1),'x',b);
    else
       phi(2) = subs(diff(fun,1),'x',b);
    end
    phi = abs(max(phi));
    if (phi >= 1)
        fprintf('Последовательность не сходится')
        x0 = xf;
        break
    end
end
end
if (vpa(x0, 5) == 0)
vpa(x0, 5)
else
    vpa(x0, 5)
    -vpa(x0, 5)
end
end