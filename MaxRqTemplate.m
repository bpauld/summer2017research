function max = MaxRqTemplate(i,D)
    %i is an integer between 1 and NUMBEROFOMEGAS that represents the
    %frequency
    % D is the disparity in degree
    % returns the maximum RqTemplate with respect to the phase shift delta

    global NUMBEROFPHASES ;
    max = Rqtemplate(i,0,D) ;
    for delta=1:NUMBEROFPHASES-1
        temp = Rqtemplate(i,delta,D) ;
        if temp > max
            max = temp ;
        end
    end
end