function A = tdmd(e, x, type)
    n = length(x);
    h = (x(n) - x(1)) / (n - 1);
    
    if type == 'l'
        c = ones(n,1) * (-1)*(2*e - h);
        b = ones(n-1,1) * e;
        a = ones(n-1,1) * (e - h);
        A = diag(c) + diag(b, 1) + diag(a, -1);
        if h <= e
            disp('Прогонка устойчива');
        else 
            disp('Прогонка неустойчива');
        end
    end
    
    if type == 'r'
        c = ones(n,1) * (-1)*(2*e + h);
        b = ones(n-1,1) * (e + h);
        a = ones(n-1,1) * e;
        A = diag(c) + diag(b, 1) + diag(a, -1);
            disp('Прогонка устойчива');
    end
    
    if type == 'c'
        c = ones(n,1) * (-1)*4*e;
        b = ones(n-1,1) * (2*e + h);
        a = ones(n-1,1) * (2*e - h);
        A = diag(c) + diag(b, 1) + diag(a, -1);
        if h <= 2*e
            disp('Прогонка устойчива');
        else 
            disp('Прогонка неустойчива');
        end
    end
    A(1,1) = 1;
     A(n,n) = 1;
     A(1,2) = 0;
     A(n,n-1) = 0;
    
    
    