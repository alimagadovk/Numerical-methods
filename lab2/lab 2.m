syms x
y = x^3 - 3*x^2 - 9*x - 5;
rootloc(y, -10, 10)
p = [1 -3 -9 -5];
roots(p)
%%
dihot(y, 4, 7)
%%
Nuton(y,-2)
Nuton(y,4)
%%
func (8, 4)
y = sin(x) - x / 2;
rootloc(y, -10, 10)
dihot (y, 0.5, 3)
dihot (y, -3, -0.5)
dihot (y, 0, 1)