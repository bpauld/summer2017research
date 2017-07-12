function plotTemplateMismatch1(start,stop,step,Ileft,Iright)
    I = start:step:stop ;
    Y = templateMismatch1(start,stop,step,Ileft,Iright) ;
    figure
    plot(I,Y) ;
    xlabel('disparity (pixels)')
    ylabel('SSE (arbitrary units)')
end