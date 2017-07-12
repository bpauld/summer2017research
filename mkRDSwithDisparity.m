function [I1,I2] = mkRDSwithDisparity (N,D) 
    I2 = mkRDS(N) ;
    I1 = I2 ;
    I1(:,D+1:N) = I2(:,1:N-D) ;
    I1(:,1:D) = 2*(rand(N,D) - 0.5) ;