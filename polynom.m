p=[1,-2,6,-10,16];
i=1;
t=4;
res1=p(i);
for s = i:4
    res2=res1.*t+p(s+1);
    res1=res2
end
z=polyder(p);
i=1;
t=4;
res3=z(i)
for s = i:4
    res4=res3.*t+p(s+1);
    res3=res4
end
%%
n=4;
p=[1,-3.55,5.1,-3.1];
x=linspace(-10,10,100);
f=polyval(p,x);
plot(x,f);
grid on
hold on
R=roots(p);
plot(R, '*');
hold off
%%
a=[1,0,0];
b=[1,4,1,-6];
[r,s,k]=residue(a,b);
%%
a=[1,3];
b=[1,-1,1,-1];
[r,s,k]=residue(a,b);
%%
x=[1,2,3,4,5,6,7,8,9,10];
v=[1,1./2,1./3,1./4,1./5,1./6,1./7,1./8,1./9,1./10];
P=polyfit(x,v,15)
plot(x,v)
grid on
format short
R=roots(P)
disp(R)
%%
x=[-1,0,1,2,3];
v=[6,5,0,3,2];
P=polyfit(x,v,15)
plot(x,v)
grid on
format short
R=roots(P)
disp(R);
%%
p=[1,-6,15,-14];
x=linspace(-5,5,100);
f=polyval(p,x);
plot(x,f);
grid on
format short
R=roots(p);
disp(R)
%%
syms x;
[G,S,T]=gcd(x^4+2*x^3-x^2-4*x-2,x^4+x^3-x^2-2*x-2);
%%
syms x;
[G,S,T]=gcd(3*x^4-5*x^3+4*x^2-2*x+1,3*x^3-2*x^2+x-1);
