clear 
close all



frequency1 = 2 ;%in cyc/deg, change it to whatever you want to test
Iright1 = mk2DSineInCycPerDeg(1000, frequency1,0) ;
disparity1 = 30 ; %in pixels
Ileft1 = shiftImage(Iright1,disparity1) ;

frequency2 = 8 ;%in cyc/deg, change it to whatever you want to test
Iright2 = mk2DSineInCycPerDeg(1000, frequency2,0) ;
disparity2 = 3 ; %in pixels
Ileft2 = shiftImage(Iright2,disparity2) ;


%now we choose an interval to plot the template mismatch function
start = -150 ;
stop = 150 ;
step = 1 ;
plotTemplateMismatch1(start,stop,step,Ileft1+Ileft2,Iright1+Iright2) ;


