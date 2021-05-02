
function [z,m]=powermethod(A,max_it,tol)
[n1, n2]=size(A);
w=ones(n1,1);
disp(' iter m r z(1) z(2) z(3) z(4)')
for i=1:max_it
    [kk, k]=max(abs(w)); z=w/w(k);
    w=A*z;
    m=w(k);
    r=norm(m*z-w);
    out=[i, m, r, z'];
    disp(out)
    if r<tol
        disp('Power method has converged'), break
    end
end


