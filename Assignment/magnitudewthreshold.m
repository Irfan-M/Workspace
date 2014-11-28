function m = magnitude(x,y,threshold)

m= sqrt(x.^2 + y.^2);
show_image(m > threshold);

end

