function res=Nuton(y, y1,x0)
syms x
yn = y;
for i=1:5

x0 = x0 - y1/subs(diff(y),'x',x0)
yn = diff(yn,x)
y1 = subs (yn,'x',x0)
end
end
