function [freq,Cn,p,phase]=furi(x,Fs)

N=length(x);
w=hanning(N);
% ffx=fft(x.*w);
ffx=fft(x);

% Amplitude Spectra
for i=1:N/2;
An(i)=-1/(2*N)*imag(ffx(i));
Bn(i)=1/(2*N)*real(ffx(i));
phase(i)=atan(Bn(i)/An(i));
end
Cn=sqrt(An.^2+Bn.^2);
% Cn=1;
% N=nfft;
freq=(0:Fs/N:Fs/2-Fs/N)';

%Power Spectra
 p=2*abs(ffx)/N;
 p=p(1:(N-1)/2).^2;


