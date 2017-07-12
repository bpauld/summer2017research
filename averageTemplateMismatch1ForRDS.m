function Y = averageTemplateMismatch1ForRDS(start,stop,step,k,disparity,sizeRDS)
    %[start,stop] is the interval in wich we want to plot the template mismatch
    %  function
    %  step is the sampling of the disparity
    % k is the number of trials that we want ( the average is 1/k * (sum of
    % the trials)
    % this is only for RDS, which the function will generate,
    % disparity is the difference of disparity between the 2 RDS
    % disparity must be even
    % sizeRDS is the size of the RDS desired
    
    
    I = start:step:stop ;
    [N,M] = size(I) ;
    Y = zeros(N,M) ;
    
    for i=1:k
        [Ileft1,Iright1] = mkRDSwithDisparity(sizeRDS,disparity/2) ;
        [Iright2,Ileft2] = mkRDSwithDisparity(sizeRDS,disparity/2) ; %inverse left and right because we want negative disparity
        Y = Y + templateMismatch1(start,stop,step,Ileft1+Ileft2,Iright1+Iright2) ;
    end
    Y = Y/k ;
    
    if(1)
        %if you want to plot the result
        figure
        plot(I,Y,'color','r')
        xlabel('disparity (pixels)')
        ylabel('average SSE (arbitrary units)')
        title(strcat('plot over ', num2str(k), ' trials with disparity ', num2str(disparity), ' about the fixation plane')) ;
    end
end