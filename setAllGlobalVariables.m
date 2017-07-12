function setAllGlobalVariables
    %setting all the global variables in the code
    %this is the first function to run, it sets everything else

    global NUMBER_OF_PIXELS_IN_1_DEGREE ;
    global BASE_FREQUENCY ;
    global NUMBEROFPHASES ;
    global NUMBEROFOMEGAS ;
    global BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2 ;
    
    NUMBER_OF_PIXELS_IN_1_DEGREE = 200 ;
    BASE_FREQUENCY = 0.625 ;
    NUMBEROFPHASES = 8 ;
    NUMBEROFOMEGAS = 11 ;
    BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2 = zeros(1,NUMBEROFOMEGAS) ;
    for i=0:NUMBEROFOMEGAS-1
        BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(1,i+1) = timesSqrtOf2(BASE_FREQUENCY,i) ;
    end
end