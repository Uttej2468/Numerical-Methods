clc
syms x;
% input section
y=input("Enter non linear equations");
a=input("enter first guess");
b=input("enter second guess");
e=input(" tolerable error");

%finding functional value
fa= eval(subs(y,x,a));
fb=eval(subs(y,x,b));

% implementing bisection method
if fa*fb>0
    disp('given initial values do not bracket the root');
else
    c=a+b/2;
    fc=eval(subs(y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);
        if fa*fc<0
            b=c;
        else
            a=c;
        end
        c=(a+b)/2;
        fc=eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n',c);
end