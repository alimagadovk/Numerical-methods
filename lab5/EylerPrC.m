function a = EylerPrC(f,x0,y0,a,b,n)
syms x;
syms y;
h=(b-a)/n;
count = 1;
px(1) = x0
py(1) = y0;
for i=a + h:h:b
    fx=subs(f,x,x0);
    fy=y0+subs(fx,y,y0)*h;
    Fx=subs(f,x,x0 + 0.5*h);
    Fy=subs(Fx,y,0.5*(y0 + fy));
 y0 = y0 + h*Fy;
 x0 = i;
count = count + 1;
px(count) = x0;
py(count) = y0;
end
plot (px, py, 'g')
a = y0;