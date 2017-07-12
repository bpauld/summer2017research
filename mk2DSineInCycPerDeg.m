function I = mk2DSineInCycPerDeg(N,FX,FY)
    %N is the number of pixels desired
    %KX is the frequency along the x axis
    %KY is the frequency along the y axis

    global NUMBER_OF_PIXELS_IN_1_DEGREE ;
    
    KX = N*FX / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    KY = N*FY / NUMBER_OF_PIXELS_IN_1_DEGREE ;
    
    I = mk2Dsine(N,KX,KY) ;
end