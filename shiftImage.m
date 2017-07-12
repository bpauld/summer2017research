function I = shiftImage(im, D)
   %given an image im and a shift D, return im shifted by D
   I = im ;
   [N,M] = size(im) ;
   
   if D >= 0 
    I(:,D+1:M) = im(:,1:M-D) ;
    I(:,1:D) = im(:,M-D+1:M) ;
   else
    I = shiftImage(im,M+D) ;
   end
end