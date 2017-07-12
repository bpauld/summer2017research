function result = timesSqrtOf2(nb, i) 
%multiply nb by sqrt(2) i times
    result = nb ;
    for j=1:i
        result = result*sqrt(2) ;
    end
end