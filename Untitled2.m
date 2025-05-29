figure
subplot(3,1,1);
plot(tvar,signal(p:q,1)),ylabel('m/s');ylim ([-MXT,MXT]);set(gca,'xtick',x);%xlim([45,410])
title ('earthquake-st3 comp1'); 
subplot(3,1,2);