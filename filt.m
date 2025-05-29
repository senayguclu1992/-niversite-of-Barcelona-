function xf=filt(x,wn,n)
% wn=[40/200 42/200];
[b,a]=butter(n,wn);
xf=filtfilt(b,a,x);
% assignin('base','xf',xf);
