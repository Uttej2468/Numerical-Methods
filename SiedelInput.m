A=[4 -1 -1;-2 6 1;-1 1 7];
b=[3;9;6];
x0=[0;0;0];
tol=0.0001;
max_it=15;
x=Seidel(A,b,x0,tol,max_it)