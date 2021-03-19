fplot('x^2', [0 1])
grid on
%%
format long
syms x
int(x^2,0,1)
%%
a = 0;
b = 1;
delta = 0.01;
f = x^2;
trapec(x^2, a, b, delta)
Simpson(x^2, a, b, delta)
%%
Mistake_trap = Mist_trap(f, a, b, delta)
Mist_Simp = Mist_Simp(f, a, b, delta)
real_mist_trap = abs(int(x^2,0,1) - trapec(x^2, a, b, delta))
real_mist_Simp = abs(int(x^2,0,1) - Simpson(x^2, a, b, delta))
%%
f = x / 2;
int_trap = trapec(f, a, b, delta)
int_Simp = Simpson(f, a, b, delta)
%%
a = 0;
b = 1;
delta = 0.01;
f = 1 / (1 + x^2);
while (abs(trapec(f, a, b, delta / 2) - trapec(f, a, b, delta)) >= 10^(-6))
    delta = delta / 2;
end
delta
int_trap = 4 * trapec(f, a, b, delta)
%%
a = 0;
b = 1;
delta = 0.01;
f = 1 / (1 + x^2);
while (abs(Simpson(f, a, b, delta / 2) - Simpson(f, a, b, delta)) >= 10^(-6))
    delta = delta / 2;
end
delta
int_Simp = 4 * Simpson(f, a, b, delta)
%%
a = 0;
b = 1;
delta = 0.01;
f = 1 / (1 + x^2);
for i = 1:2
    delta = delta / 2
    int_trap = trapec(f, a, b, delta)
end
%%
a = 0;
b = 1;
delta = 0.01;
f = 1 / (1 + x^2);
for i = 1:2
    delta = delta / 2
    int_Simp = Simpson(f, a, b, delta)
end