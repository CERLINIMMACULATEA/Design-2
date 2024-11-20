# Design-2
clc;
clear all;

close all;

N=input('Enter the sequence length N:');

L=input('Enter the upsampling factor L:');

f1=0.01;

f2=0.2;

t=0:1:N-1;

x=sin(2*pi*f1*t)+sin(2*pi*f2*t);

x1=[zeros(1,L*N)];

t1=1:1:L*N;

j=1:L:L*N;

x1(j)=x;

subplot(3,1,1);

plot(t,x);

xlabel('time-->');

ylabel('amplitude-->');

title('Input analog signal');

subplot(3,1,2);

stem(t,x);

xlabel('n-->');

ylabel('amplitude-->');

title('sampled signal');

subplot(3,1,3);

stem(t1-1,x1);

xlabel('n-->');

ylabel('amplitude==>');

title('upsampled signal');
