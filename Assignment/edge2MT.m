function m = edge2MT(image,edgeY,edgeY,threshold)

% Applies 2 edge filters, 1 threshold, to the image and returns image in B/W
% edgeY = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)

x = conv2(image,edgeY);
y = conv2(image,edgeY);

m = sqrt(x.^2 + y.^2);
m = (m > threshold);

show_image(m);

end
