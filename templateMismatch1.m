function Y = templateMismatch1(start,stop,step,Ileft,Iright)
    %this function returns the template mismatch function evaluated in the interval [start,end] separated by 'step' for left image Ileft and right image Iright
    %start, end and step are in pixels
    %numberOfFrequencies is the number of frequencies we want to explore
    %it must be smaller or equal than NUMBEROFOMEGAS.
    %the reason that one would want to make it smaller than NUMBEROFOMEGAS is that it would
    %make the code significantly faster if we don't consider the smallest
    %frequencies (I didn't implement that for now)
    %that is because small frequency implies that the cell is big and so
    %the inner product is very costly with large matrices
    
        
    
    global NUMBEROFOMEGAS ;
    global NUMBEROFPHASES ;
    global BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2 ;
    

    %we are going to create a lookup table where all the response the the
    %image (RqSimuli in the paper) will be stored
    %this will allow us to not recompute them for each disparity
    
    global RqLookupTable;
    RqLookupTable = zeros(NUMBEROFOMEGAS,NUMBEROFPHASES) ;
    for w=1:NUMBEROFOMEGAS
        for delta=0:NUMBEROFPHASES-1
            RqLookupTable(w,delta+1) = RqStimulus(w,delta,Ileft,Iright) ;
        end
    end
    
    
    
    %now we calculate the sum of inverse frequencies, which we are going to use in the weighting 
    global sumOfInverseOmega ;
    sumOfInverseOmega = 0 ;
    for i=1 : NUMBEROFOMEGAS
        omega = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(1,i) ;
        sumOfInverseOmega = sumOfInverseOmega + 1/omega ;
    end
    
    
    %now we get the maximum response to the stimuli, that will help with
    %the normalization
    global MaxRqStimuliWrtDeltaAndOmega ;
    MaxRqStimuliWrtDeltaAndOmega = max(max(RqLookupTable)) ;
    
    
    
    Y = start:step:stop ;
    j = start ;
    [N,M] = size(Y) ;
    for i=1:M
        Y(i) = templateMismatch1AtSpecificDisparity(j) ;
        j = j + step ;
    end
end
    
    
    
    
    
    
    
    
    
            
