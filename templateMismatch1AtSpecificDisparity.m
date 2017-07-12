function I = templateMismatch1AtSpecificDisparity(D)
    %D is disparity in pixels
    %returns the template mismatch function calculated at disparity D
    % there is no need to pass Ileft and Iright as parameters because the
    % RqStimulus values are stored in the lookup table
    % this function is only called by the function templateMismatch1
    
    global RqLookupTable ;
    global MaxRqStimuliWrtDeltaAndOmega ;
    global sumOfInverseOmega ;
    global NUMBEROFPHASES ;
    global NUMBEROFOMEGAS ;
    global NUMBER_OF_PIXELS_IN_1_DEGREE ;
    global BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2 ;
    
    %first we need to convert D from pixels to degree 
    D = D/NUMBER_OF_PIXELS_IN_1_DEGREE ;
    
    
    
    %the next calculation is the formula (7) in the paper
    I = 0 ;
    for w=1:NUMBEROFOMEGAS
        %we get the maximum RqTemplate and RqSimulus with respect to the
        %phase shift to optimize the calculation
        MaxRqStimuluswrtDelta = max(RqLookupTable(w,:)) ;
        MaxRqTemplatewrtDelta = MaxRqTemplate(w,D) ;
        for delta=0:NUMBEROFPHASES-1
            RqTemplate = Rqtemplate(w,delta,D) ;
            
            RqTemplateNormalized = RqTemplate / MaxRqTemplatewrtDelta ;
            
            RqStimulus = RqLookupTable(w,delta+1) ;
            
            RqStimNormalized = RqStimulus / MaxRqStimuluswrtDelta ;
            
            wstim = RqStimulus / MaxRqStimuliWrtDeltaAndOmega ; %the denominator in the division seems useless since it is the same for every term in the sum
            %wstim = RqStimulus ;
    
            
            omega = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(1,w) ;
            
            wch = 1/(omega*sumOfInverseOmega) ;
            
            r = RqTemplateNormalized - RqStimNormalized ;
            
            
            %I = I + wch*wstim*r*r ;
            %this is the calculation from the paper, however I realized that we seem to get better results
            %without the weighting wch, namely
            I = I + wstim*r*r ;
        end
    end
end
    