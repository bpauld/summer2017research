clear
close all

frequency = 3.75 ; % as in figure 2 in the paper, change it to test other frequencies
Iright = mk2DSineInCycPerDeg(1000,frequency,0) ;

disparity = 0 ; %in pixels, change it to test other disparities 
Ileft = shiftImage(Iright,disparity) ;


start = -150 ; %in pixels
stop = 150; %in pixels
step = 2 ; % in pixels
plotTemplateMismatch1(start,stop,step,Ileft,Iright) ;


