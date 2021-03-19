function A = matr(e, x, type)
    n = length(x);
    h = (x(n) - x(1)) / (n - 1);
    
    if type == 'l'
        c = ones(n,1) * (-1)*(2*e - h);
        b = ones(n-1,1) * e;
        a = ones(n-1,1) * (e - h);
        A = diag(c) + diag(b, 1) + diag(a, -1);
        if h <= e
            disp('Устойчива');
        else 
            disp('Неустойчива');
        end
    end
    
    if type == 'r'
        c = ones(n,1) * (-1)*(2*e + h);
        b = ones(n-1,1) * (e + h);
        a = ones(n-1,1) * e;
        A = diag(c) + diag(b, 1) + diag(a, -1);
            disp('Устойчива');
    end
    
    if type == 'c'
        c = ones(n,1) * (-1)*4*e;
        b = ones(n-1,1) * (2*e + h);
        a = ones(n-1,1) * (2*e - h);
        A = diag(c) + diag(b, 1) + diag(a, -1);
        if h <= 2*e
            disp('Устойчива');
        else 
            disp('Неустойчива');
        end
    end
    A(1,1) = 1;
    A(n,n) = 1;
    A(1,2) = 0;
    A(n,n-1) = 0;
    
    
    