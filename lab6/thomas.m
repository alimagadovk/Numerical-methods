function y = thomas(A, F)
    n = size(A, 2);
    
     
    
    alpha(1) = -A(1,2); 
    beta(1) = F(1); 
    
    for i = 2:n - 1
        c = -A(i,i); b = A(i,i+1); a = A(i,i-1);
        alpha(i) = b / (c - a*alpha(i-1));
        beta(i) = (a*beta(i-1) - F(i)) / (c - a*alpha(i-1));
    end
    
    y(n) = (F(n) - A(n,n-1)*beta(n-1)) / (1 + A(n,n-1)*alpha(n-1));
    
    for i = n - 1:-1:1
        y(i) = alpha(i)*y(i+1) + beta(i);
    end
    y = y';
end