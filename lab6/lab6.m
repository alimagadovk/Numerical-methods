A = matr(0.7, [0:0.1:1], 'r')
F = randi(9,11,1)
y = Resh(A,F)
A \ F
%%
e = 0.5;
n = 5
 
h = 1 / (n - 1);
x = [0:h:1];
 
F = zeros(n, 1);
F(n) = 1;
 
for i = 1:3 
    if i == 1
        type = 'l';
    elseif i == 2
        type = 'r';    
    elseif i == 3
        type = 'c';
    end
    
    A = matr(e, x, type);
    type
    y = Resh(A, F);
    
    figure;
    hold on;
    grid on;
    plot(x, y, 'r', x, y, 'r.');
 
    yAns = @(x)(1/(1 - exp(-1/e))) * (1 - exp(-x/e));
    xn = [0:h/10:1];
    plot(xn, yAns(xn), 'b');
    
    yA = yAns(x)
    y = y'
    mistake = abs(y - yA) ./ y;
    mistake(1) = 0
    S = 0;
    for j=1:length(mistake)
        S = S + mistake(j);
    end
    S = S / length(mistake)
end
%%
e = 0.15;

for i = 1:3 
    if i == 1
        type = 'l';
    elseif i == 2
        type = 'r';    
    elseif i == 3
        type = 'c';
    end
    
    A = matr(e, x, type);
    type
    y = Resh(A, F);
    
    figure;
    hold on;
    grid on;
    plot(x, y, 'r', x, y, 'r.');
    plot(xn, yAns(xn), 'b');
end
%%
e = 0.05;

for i = 1:3 
    if i == 1
        type = 'l';
    elseif i == 2
        type = 'r';    
    elseif i == 3
        type = 'c';
    end
    
    A = matr(e, x, type);
    type
    y = Resh(A, F);
    
    figure;
    hold on;
    grid on;
    plot(x, y, 'r', x, y, 'r.');
    plot(xn, yAns(xn), 'b');
end
%%
e = 0.5;
n = 10
 
h = 1 / (n - 1);
x = [0:h:1];
 
F = zeros(n, 1);
F(n) = 1;
 
for i = 1:3 
    if i == 1
        type = 'l';
    elseif i == 2
        type = 'r';    
    elseif i == 3
        type = 'c';
    end
    
    A = matr(e, x, type);
    type
    y = Resh(A, F);
    
    figure;
    hold on;
    grid on;
    plot(x, y, 'r', x, y, 'r.');
 
    yAns = @(x)(1/(1 - exp(-1/e))) * (1 - exp(-x/e));
    xn = [0:h/10:1];
    plot(xn, yAns(xn), 'b');
    
    yA = yAns(x)
    y = y'
    mistake = abs(y - yA) ./ y;
    mistake(1) = 0
    S = 0;
    for j=1:length(mistake)
        S = S + mistake(j);
    end
    S = S / length(mistake)
end