function result = RqStimulus(w,delta,Ileft,Iright)
% w is an integer representing the frequency, it must be between 1 and
% NUMBEROFOMEGAS
% delta is an integer representing the phase shift, it must be between 1
% and NUMBEROFPHASES


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
    
    indexOfPiOver2 = 2;
    
    if w==1
        fleft1 = cells1(:,:,1) ;
        fright1 = cells1(:,:,delta + 1) ;
        fleft2 = cells1(:,:,indexOfPiOver2+1) ;
        fright2 = cells1(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==2
        fleft1 = cells2(:,:,1) ;
        fright1 = cells2(:,:,delta + 1) ;
        fleft2 = cells2(:,:,indexOfPiOver2+1) ;
        fright2 = cells2(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==3
        fleft1 = cells3(:,:,1) ;
        fright1 = cells3(:,:,delta + 1) ;
        fleft2 = cells3(:,:,indexOfPiOver2+1) ;
        fright2 = cells3(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==4
        fleft1 = cells4(:,:,1) ;
        fright1 = cells4(:,:,delta + 1) ;
        fleft2 = cells4(:,:,indexOfPiOver2+1) ;
        fright2 = cells4(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==5
        fleft1 = cells5(:,:,1) ;
        fright1 = cells5(:,:,delta + 1) ;
        fleft2 = cells5(:,:,indexOfPiOver2+1) ;
        fright2 = cells5(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==6
        fleft1 = cells6(:,:,1) ;
        fright1 = cells6(:,:,delta + 1) ;
        fleft2 = cells6(:,:,indexOfPiOver2+1) ;
        fright2 = cells6(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==7
        fleft1 = cells7(:,:,1) ;
        fright1 = cells7(:,:,delta + 1) ;
        fleft2 = cells7(:,:,indexOfPiOver2+1) ;
        fright2 = cells7(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==8
        fleft1 = cells8(:,:,1) ;
        fright1 = cells8(:,:,delta + 1) ;
        fleft2 = cells8(:,:,indexOfPiOver2+1) ;
        fright2 = cells8(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==9
        fleft1 = cells9(:,:,1) ;
        fright1 = cells9(:,:,delta + 1) ;
        fleft2 = cells9(:,:,indexOfPiOver2+1) ;
        fright2 = cells9(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    elseif w==10
        fleft1 = cells10(:,:,1) ;
        fright1 = cells10(:,:,delta + 1) ;
        fleft2 = cells10(:,:,indexOfPiOver2+1) ;
        fright2 = cells10(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    
    
    elseif w==11
        fleft1 = cells11(:,:,1) ;
        fright1 = cells11(:,:,delta + 1) ;
        fleft2 = cells11(:,:,indexOfPiOver2+1) ;
        fright2 = cells11(:,:,mod(indexOfPiOver2+delta,8)+1) ;
    end
   
 
    r1 = innerProd(Ileft,fleft1) + innerProd(Iright,fright1) ;
    r2 = innerProd(Ileft,fleft2) + innerProd(Iright,fright2) ;
   
    result = r1*r1 + r2*r2 ;  
end
    