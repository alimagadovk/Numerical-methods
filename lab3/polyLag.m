function P = polyLag(px,pf)
syms x;
P = 0;
for i = 1:length(px)
    Lx = 1;
    Lxk = 1;
    for k = 1:length(px)
        if (k ~= i)
        Lx = Lx * (x - px(k));
        Lxk = Lxk * (px(i) - px(k));
        end
    end
    P = P + pf(i) * (Lx / Lxk);
end
end