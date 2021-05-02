
aa=0; bb=100; n=20; h= (bb-aa) /n;
x=h:h:bb
p=zeros(1, n-1) ; q=10^(-7)*ones(1, n-1) ; r=10^(-8)*x.*(x-100);
ya=0; yb=0;
h2=h/2; hh=h*h;

a=zeros(1, n-1) ; a(1:n-2) =1-p(1, 1:n-2) *h2;
d = -(2+hh*q) ;

b=zeros (1, n-1) ; b(2:n-1) =1+p(1, 2:n-1)*h2;

c(1) =hh*r(1) - (1+p(1)*h2)*ya;
c(2:n-2) =hh*r(2:n-2) ;
c(n-1) =hh*r(n-1) -(1-p(n-1)*h2)*yb;

m=length (d) ; a(1) =a (1) /d(1) ; c(1)=c(1) /d(1) ;
for i=2 :m-1
    denom=d (i) -b (i) *a (i-1) ;
    if (denom==0) , error('zero in denominator' ) , end
    a (i) =a (i) /denom;
    c(i)= (c(i)-b(i) *c (i-1) ) /denom;

end
c (m) = (c (m) -b (m) *c (m-1) ) / (d(m) - b(m) *a (m-1) );
y (m) =c (m) ;
for i=m-1: -1:1
    y (i) =c(i) - a(i) *y(i+1) ;
end
% End Guass-Thomas

xx= [aa x] ; yy=[ya y yb]
yy1=[yy(1:20) yb]
out= [xx' yy1']
disp ( ' out' )
plot (xx' , yy1' )
grid on
