function result = innerProd(A,B)
%returns the inner product of matrices A and B
%assuming that A is bigger than B

    [n1,m1] = size(A) ;
    [n2,m2] = size(B) ;
    %we need the offset to plave B in the center of A
    offsetx = (n1-n2)/2 ;
    offsety = (m1-m2)/2 ;
    
    result = sum( sum( A(offsetx+1 : offsetx+n2,offsety+1 : offsety+m2) .* B)) ;
end