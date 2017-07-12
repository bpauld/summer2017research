function r = Rqtemplate(i,delta,D)
    %delta is an integer between 0 and NUMBEROFPHASES-1 that represents the
    %phase shift
    %i is an integer between 1 and NUMBEROFOMEGAS that represents the
    %frequency
    % D is the disparity in degree
    % this returns the RqTemplate, as in equation 6 of the paper
    
   
    global BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2 ;
    
    delta = delta*pi/4 ;
    
    
    

    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(i) ;
    
    
    sigmax = (0.39)/w ;
    sigmay = 2*sigmax ;
    
    r = (1/(2*pi*sigmax*sigmay)) * ( 1 + exp(-(D*D)/(4*sigmax*sigmax)) * cos(2*pi*w*D - delta)) ;
end
