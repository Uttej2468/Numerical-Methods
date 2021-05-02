function x=Seidel(A, b, x0, tol, max_it)
[n, m]=size(A) ;
x=x0;
C=-A;

for i=1:n
    C(i, i)=0;
end
for i=1:n
    C(i, 1:n) =C(i, 1:n)/A(i, i) ;
end
for i=1:n
    r(i, 1)=b(i) /A(i, i) ;
end
i=1;

disp ( '   i   x1  x2  x3   . . . ')
while (i<=max_it)
    xold=x; 
    for j=1:n
        x (j) =C(j, :)*x+r(j);
    end
    if norm (xold-x) <=tol
        disp ( ' Gauss-Seidel Method Converged' ) ;
        return;

    end
    disp ([i  x' ])
    i=i+1;
end
disp('Gauss-Siedal Method did not converge');
