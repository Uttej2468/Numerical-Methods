clc
clear all
syms x;
fun=input( 'Enter the function  ');
f=inline(fun) ;
z=diff(f(x));
f1=inline(z);

x0=input( 'Enter the initial value of interval  ');
x=x0;
for i=0:100

y=x;
x=y-(f(x)/f1(x) );
if x==y
    break
end

end
fprintf( 'The root of the equation is : ');
x
