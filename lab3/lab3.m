figure(1)
for i = 0:4
    t(i + 1) = i / 4;
    f(i + 1) = sin(pi*t(i + 1))
end
syms x
hold on
for i = 0:3
   k = (f(i + 2) - f(i + 1)) / (t(i + 2) - t(i + 1));
   y(i + 1) = k*(x - t(i + 1)) + f(i + 1);
   x0 = [t(i + 1) t(i + 2)];
   y0 = k.*(x0 - t(i + 1)) + f(i + 1);
   plot(x0, y0, 'g')
   if (i == 0)
       x0 = [0 1/6];
       y1 = k.*(x0 - t(i + 1)) + f(i + 1);
       for j = 1:length(x0)
       plot(x0(j),y1(j), 'k*')
       end
   end
   if (i == 1)
       x0 = [1/3 1/2];
       y1(3:4) = k.*(x0 - t(i + 1)) + f(i + 1);
       for j = 1:length(x0)
       plot(x0(j),y1(j + 2), 'k*')
       end
   end
end
h = px(1):0.001:px(length(px))
plot(h,subs(sin(pi*x),'x',h))
%fplot('sin(pi*x)',[0 1])
grid on
axis equal
x0 = [0 1/6 1/3 1/2];
y2 = sin(pi.*x0);
for i = 1:length(x0)
    plot(x0(i),y2(i), 'bo')
end
y1
y2
delta = abs(y2 - y1)
%%
px = [0 1/4 1/2 3/4 1];
pf = sin(pi.*px);
int_Polyn = polyLag(px,pf)
h = px(1):0.001:px(length(px))
plot(h, subs(int_Polyn,'x',h), 'r')
p = [0, 1/6, 1/3, 1/2];
for i = 1:4
    plot(p(i), subs(int_Polyn,'x',p(i)), '*r')
end
h = 0:0.1:1;
Max_Mistake = vpa(max(abs(subs(int_Polyn - sin(pi*x), 'x', h))))
Theor_Mistake = Mistake(px(1), px(length(px)), px, sin(pi*x))
vpa(subs (int_Polyn, 'x', 2))
%%
figure(2)
hold on
grid on
h = -1:0.01:1
plot (h, subs(1 / (1 + 25 * x^2),'x',h))
axis([-1 1 -1 1])
h = -1:2/9:1;
u = subs(1 / (1 + 25 * x^2),'x',h);
int_Polyn2 = polyLag(h,u)
h = -1:0.01:1
plot(h, subs(int_Polyn2,'x',h), 'r')
plot (0.95, subs(1 / (1 + 25 * x^2),'x',0.95), 'bo')
plot (0.95, subs(int_Polyn2,'x',0.95), 'ro')
figure(3)
hold on
grid on
h = -1:0.01:1
plot (h, subs(1 / (1 + 25 * x^2),'x',h))
axis([-1 1 -1 1])
h = -1:1/9:1;
u = subs(1 / (1 + 25 * x^2),'x',h);
int_Polyn2 = polyLag(h,u)
h = -1:0.01:1
plot(h, subs(int_Polyn2,'x',h), 'r')
plot (0.95, subs(1 / (1 + 25 * x^2),'x',0.95), 'bo')
plot (0.95, subs(int_Polyn2,'x',0.95), 'ro')
figure(4)
hold on
grid on
h = -1:0.01:1
plot (h, subs(1 / (1 + 25 * x^2),'x',h))
axis([-1 1 -1 1])
h = -1:1/18:1;
u = subs(1 / (1 + 25 * x^2),'x',h);
int_Polyn2 = polyLag(h,u)
h = -1:0.01:1
plot(h, subs(int_Polyn2,'x',h), 'r')
plot (0.95, subs(1 / (1 + 25 * x^2),'x',0.95), 'bo')
plot (0.95, subs(int_Polyn2,'x',0.95), 'ro')
%max_abs_w = factorial(36)*((1/18)^37)
figure(5)
hold on
grid on
h = -1:0.01:1
plot (h, subs(1 / (1 + 25 * x^2),'x',h))
axis([-1 1 -1 1])
h = -2:1/9:2;
u = subs(1 / (1 + 25 * x^2),'x',h);
int_Polyn2 = polyLag(h,u)
h = -1:0.01:1
plot(h, subs(int_Polyn2,'x',h), 'r')
plot (0.95, subs(1 / (1 + 25 * x^2),'x',0.95), 'bo')
plot (0.95, subs(int_Polyn2,'x',0.95), 'ro')
%%
figure(6)
px2 = 0:0.1:1;
pf2 = interp1(px, pf, px2);
plot (px2, pf2)
grid on
%%
clear
figure(7)
syms x
px = -1:1/9:1
pf = double(subs(1 / (1 + 25 * x^2),'x',px))
px2 = -1:0.1:1;
pf2 = interp1(px, pf, px2);
plot (px2, pf2)
grid on