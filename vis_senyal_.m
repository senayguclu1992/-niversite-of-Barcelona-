% 
close all
% 

%clear
%load ('H:\LA Ristra\earthquake _in 3.mat');
signal=earthquake_in3;%bunker;                       
maxc=3;  
p=15500;                       %                    
lon=length(signal)-75000;                                            
q=p+lon; 
signal=earthquake_in3;%bunker;                       
maxc=3  
sp=250;
sp2=sp/2
maxfilt=30
minfilt=1
for j=1:3;
signal(:,j)=filt(signal(:,j),[minfilt/sp2 maxfilt/sp2],4); %frequencia de nyquist
end
texto='Time (s) in 3';
titulo='earthquake';

comp=3;
MXT=max(max(signal(p:q,1:3)));
 sp=250;dt=128;
dt2=dt/2;

% q ha de ser menor o igual que la minima dimension. 
xvar=q-p;%longitud
tvar=0:1/sp:xvar/sp;
x=0:50:xvar;
dvar= round(xvar/100);
 figure
subplot(3,1,1);
plot(tvar,signal(p:q,1)),ylabel('m/s');ylim ([-MXT,MXT]);set(gca,'xtick',x);%xlim([45,410])
title ('earthquake-st3 comp1'); 
subplot(3,1,2);

plot(tvar,signal(p:q,2)),ylabel('m/s');ylim ([-MXT,MXT]);set(gca,'xtick',x);%xlim([45,410])
title ('earthquake-st3 comp2'); 
subplot(3,1,3);

plot(tvar,signal(p:q,3)),ylabel('m/s');ylim ([-MXT,MXT]);set(gca,'xtick',x);%xlim([45,410])
title ('earthquake-st3 comp3');  
figure
subplot(3,1,1)
[t,freq,Af1]=rs_nou(signal(p:q,1),sp,dt,dt,dt2);
imagesc(t,freq,log10(Af1{1}));axis xy; colormap(hsv);ylim([0 125]);set(gca,'xtick',x);caxis([-20 -10]);%xlim([50,400]);
ylabel('Hz')
colorbar 
 subplot(3,1,2);
[t,freq,Af1]=rs_nou(signal(p:q,2),sp,dt,dt,dt2);
imagesc(t,freq,log10(Af1{1}));axis xy; colormap(hsv);ylim([0 125]);set(gca,'xtick',x);caxis([-20 -10]);%xlim([50,400]
ylabel('Hz')
colorbar 
subplot(3,1,3)
[t,freq,Af1]=rs_nou(signal(p:q,3),sp,dt,dt,dt2);
imagesc(t,freq,log10(Af1{1}));axis xy; colormap(hsv);ylim([0 125]);set(gca,'xtick',x);caxis([-20 -10]);%xlim([50,400]);
ylabel('Hz')
colorbar 
 figure
 subplot(3,1,1);

 [freq,~,f,phase]=furi(signal(p:q,1),sp);
  maxaf = max(f);

 plot(freq,f);ylim([0 maxaf]);%set(gca,'xtick',xf)
 xlabel('comp 1 Hz');ylabel('Amplitude (m/s * Hz)')
 
  subplot(3,1,2);
  [freq,~,f,phase]=furi(signal(p:q,2),sp);
  maxaf = max(f);

 plot(freq,f);ylim([0 maxaf]);%set(gca,'xtick',xf)
 xlabel('comp 2 Hz');ylabel('Amplitude (m/s * Hz)')
 
  subplot(3,1,3);
  [freq,~,f,phase]=furi(signal(p:q,3),sp);
  maxaf = max(f);

 plot(freq,f);ylim([0 maxaf]);%xlim([50,400])%set(gca,'xtick',xf)
 xlabel('comp 3 Hz');ylabel('Amplitude (m/s * Hz)')
 
 figure
 subplot(3,1,1);

 [freq,~,f,phase]=furi(signal(p:q,1),sp);
  maxaf = max(f);

 plot(freq,f);xlim([20,125])%ylim([0 maxaf]);%set(gca,'xtick',xf)
 xlabel('comp 1 Hz');ylabel('Amplitude (m/s * Hz)')
 
  subplot(3,1,2);
  [freq,~,f,phase]=furi(signal(p:q,2),sp);
  maxaf = max(f);

 plot(freq,f);xlim([20,125])%lim([0 maxaf]);%set(gca,'xtick',xf)
 xlabel('comp 2 Hz');ylabel('Amplitude (m/s * Hz)')
 
  subplot(3,1,3);
  [freq,Cn,f,phase]=furi(signal(p:q,3),sp);
  maxaf = max(f);

 plot(freq,f);xlim([20,125])%ylim([0 maxaf]);%xlim([50,400])%set(gca,'xtick',xf)
 xlabel('comp 3 Hz');ylabel('Amplitude (m/s * Hz)')

