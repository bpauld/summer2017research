function createCells
    %this function creates all the cells that we will need with the
    %different frequency and different phase shifts
    %we store them in memory so that we don't have to create them each time
    %there are 8 different phase shifts (from 0 to 2*pi with steps of pi/4)
    %there are 11 different frequencies (from 0.625 to 20 multiplying by sqrt(2))
    
    %the cells are stored in matrices of size AxAxnumberOfPhases, where is
    %A is chosen so that the matrix captures the full cell (it depends on
    %the frequency, see below)
    
    %run this function just after setAllGlobalVariables, before doing
    %anything else
    
    
    global NUMBER_OF_PIXELS_IN_1_DEGREE ;
    global NUMBEROFPHASES ; 
    global BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2 ;
    
    global cells1 ;
    global cells2 ;
    global cells3 ;
    global cells4 ;
    global cells5 ;
    global cells6 ;
    global cells7 ;
    global cells8 ;
    global cells9 ;
    global cells10 ;
    global cells11 ;
    %cells1 holds the cells with the smallest frequency
    %cells11 holds the cells with the highest frequency
    
    
 
    
    N1 = 700 ; cells1 = zeros(N1,N1) ;
    N2 = 550 ; cells2 = zeros(N2,N2) ;
    N3 = 450 ; cells3 = zeros(N3,N3) ;
    N4 = 330 ; cells4 = zeros(N4,N4) ;
    N5 = 260 ; cells5 = zeros(N5,N5) ;
    N6 = 200 ; cells6 = zeros(N6,N6) ;
    N7 = 120 ; cells7 = zeros(N7,N7) ;
    N8 = 100 ; cells8 = zeros(N8,N8) ;
    N9 = 60 ; cells9 = zeros(N9,N9) ;
    N10 = 50 ; cells10 = zeros(N10,N10) ;
    N11 = 40 ; cells11 = zeros(N11,N11) ;
    % note that the sizes chosen above are adequate when 1 degree = 200 pix
    % should the global variable NUMBER_OF_PIXELS_IN_1_DEGREE get bigger,
    % then the sizes chosen might not be appropriate
    % in that case we must check every matrix and make sure that the matrices are large enough to capture the all cell 
    
    
%===================================================================================================
%we start with the smallest cell, namely the one with the highest
%frequency, which is 0.625 multiplied by sqrt(2) 10 times
    
    
    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(11) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N11) - (N11/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N11) - (N11/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells11(:,:,phase) = f ;
    end
    

%=====================================================================================================
% this time multiply BASE_FREQUENCY by sqrt(2) 9 times   

    
    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(10) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N10) - (N10/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N10) - (N10/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells10(:,:,phase) = f ;
    end

%===================================================================================================
%multiply BASE_FREQUENCY by sqrt(2) 8 times

    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(9) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N9) - (N9/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N9) - (N9/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells9(:,:,phase) = f ;
    end

%===================================================================================================
%multiply BASE_FREQUENCY by sqrt(2) 7 times

    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(8) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N8) - (N8/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N8) - (N8/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells8(:,:,phase) = f ;
    end

%==================================================================================================
%multiply BASE_FREQUENCY by sqrt(2) 6 times

    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(7) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N7) - (N7/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N7) - (N7/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells7(:,:,phase) = f ;
    end
    
    
    
%====================================================================================================
%multiply BASE_FREQUENCY by sqrt(2) 5 times

    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(6) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N6) - (N6/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N6) - (N6/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells6(:,:,phase) = f ;
    end
   
    
%=====================================================================================================
%multiply BASE_FREQUENCY by sqrt(2) 4 times

    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(5) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N5) - (N5/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N5) - (N5/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells5(:,:,phase) = f ;
    end
    
%=======================================================================================================
%multiply BASE_FREQUENCY by sqrt(2) 3 times

    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(4) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N4) - (N4/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N4) - (N4/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells4(:,:,phase) = f ;
    end
%=========================================================================================================
%multiply BASE_FREQUENCY by sqrt(2) 2 times


    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(3) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N3) - (N3/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N3) - (N3/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells3(:,:,phase) = f ;
    end
    
%======================================================================================================
%multiply BASE_FREQUENCY by sqrt(2) once

    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(2) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N2) - (N2/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N2) - (N2/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells2(:,:,phase) = f ;
    end

%=====================================================================================================    
%BASE_FREQUENCY

    
    w = BASE_FREQUENCY_MULTIPLIED_BY_SQRT_OF_2(1) / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    sigmax = 0.39/w ;
    sigmay = 2*sigmax ;
    
    for phase=1:NUMBEROFPHASES
        delta = (phase-1)* pi/4 ; % so that we have steps of pi/4
        
        shiftx = ((1:N1) - (N1/2 + 1));
            Gaussianx = 1/(sqrt(2*pi)*sigmax) * ...
             exp(- shiftx.*shiftx/ (2 * sigmax*sigmax) );

        shifty = ((1:N1) - (N1/2 + 1));
            Gaussiany = 1/(sqrt(2*pi)*sigmay) * ...
             exp(- shifty.*shifty/ (2 * sigmay*sigmay) );
        
        Gaussian = Gaussiany' * Gaussianx ;
            
        X = meshgrid(shiftx) ;
        cosfunction = cos(2*pi*w*X + delta) ;
        f = Gaussian .*cosfunction ;
        
        cells1(:,:,phase) = f ;
    end

    
end

    
    
    
