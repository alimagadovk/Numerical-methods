function y = thomasCustomH(e, x, type)
    n = length(x);
    F = zeros(n, 1);
    F(n) = 1;
    
    A(1,1) = 1; A(n,n) = 1;
    A(1,2) = 0; A(n,n-1) = 0;
            
    for i = 2:length(x) - 1
        h = x(i - 1) - x(i);
        xn = [x(i - 1) x(i)];
        
        An = tdmd(e, xn, type);
    
        A(i, i - 1) = An(2, 1);
        A(i, i) = An(1, 1);
        A(i, i + 1) = An(1, 2);
    end
    A
    y = thomas(A, F);
    hold on; grid on;
    xlabel('X'); ylabel('Y');
    plot(x, y, 'r', x, y, 'r.');
    
    yAns = @(x)(1/(1 - exp(-1/e))) * (1 - exp(-x/e));
    xn = [0:1/(10*length(x)):1];
    plot(xn, yAns(xn), 'b');
