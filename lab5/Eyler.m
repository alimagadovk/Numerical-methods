function a = Eyler(f,x0,y0,a,b,n)
syms x;
syms y;
h=(b-a)/n;
count = 1;
px(1) = x0
py(1) = y0; 
for i=a + h:h:b
    fx=subs(f,x,x0);
    fy=subs(fx,y,y0);
 y0=y0+h*fy;
 x0 = i;
 count = count + 1;
 py(count) = y0;
 px(count) = x0;
end
plot (px, py, 'r')
a = y0;