clc
syms x

%input section
f=input("enter non linear equations:");
n=input("Enter the number of decimal places:");
epsilon=5*10^-(n+1)
x0=input("enter first approx value");
x1=input("enter second approx value");
for i=1:100
    f0=eval(subs(f,x,x0)); 
    f1=eval(subs(f,x,x1));
    y=x1-((x1-x0)/(f1-f0))*f1;
    err=abs(y-x1);
    if err<epsilon
        break
    end
    x0=x1;
    x1=y;
end
    fprintf("the root is :%f\n",y);
    fprintf("no.of iterations : %d\n",i);