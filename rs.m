function [t,freq,Af1]=rs(x,fs,lw,lff,over)
%Amplitud rs(x,fs,lw,over)
%%%%%%%%%%rs
% passsem de mm/s a m/s
% x=x.*10e-3

jm=length(x(1,:));


for j=1:jm 
    
   N=(floor((length(x(:,j)))/over))*over;
   w=hanning(lw);
%    norm_win=1/mean(w.^2);
%   w=1;
  k=1;
  i=1;
    
    t=linspace(0,N/fs,N/over-1);
%     freq=(0:fs/lff:fs/2-fs/lff);
    freq=(0:fs/lff:fs/2);
    for i=1:over:N-over
%         Af=(fft(x(i:i+lw-1,j).*w));
       Af=(fft(x(i:i+lw-1,j)));
        % Amplitude spectra  
     n=lw/2;
%     for h=1:n
%         An(h)=-1/n*imag(Af(h));
%         Bn(h)=1/(n)*real(Af(h));   
%     end
%     Af1{j}(:,k)=sqrt(An.^2+Bn.^2);
%     Af2{j}(:,k)=Af;
%     Af1{j}(:,k)=2.*abs(Af(1:n))./(n);
%     D=n*Af1{j}(:,k)
%     imag(D)=0;
%     D(n+1:2n)=conj(D);

%   Power spectra
    
%     p=(abs(Af)).^2./(lw/norm_win);
p=2*abs(Af)/(lw);   
Af1{j}(:,k)=p(1:n+1).^2;
        k=k+1;
    end
end
