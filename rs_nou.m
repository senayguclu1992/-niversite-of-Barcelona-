function [t,freq,Af1]=rs(x,fs,lw,lff,over)
% % x vector 1 columna
% fs mostreig
% lw lonf finestra
% lff longitud fft --- = long finestra 2 n
% over overlaping 50% finestra
%Amplitud rs(x,fs,lw,over)
%%%%%%%%%%rs
% passsem de mm/s a m/s
% x=x.*10e-3

jm=length(x(1,:));
for j=1:jm 
    
   N=(floor((length(x(:,j)))/over))*over;
   w=hanning(lw);
  k=1;
  i=1;
        t=linspace(0,N/fs,N/over-1);
    freq=(0:fs/lff:fs/2);
    for i=1:over:N-over
       Af=(fft(x(i:i+lw-1,j)));
       
     n=lw/2;
%   Power spectra
p=2*abs(Af)/(lw);   
Af1{j}(:,k)=p(1:n+1).^2;
        k=k+1;
    end
end
