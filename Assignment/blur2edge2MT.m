function m = blur2edge2MT(image,blur1,blur2,edgeX,edgeY,threshold)

% Applies 2 smooth filter, 2 edge filters, 1 threshold,  to the image and returns image in B/W
% blur1/2 = smoothing / noise filter e.g. GaussianY (blur)
% edgeX/Y = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)

im= conv2(image,blur1,'same');
im= conv2(image,blur2,'same');

x = conv2(im,edgeX,'same');
y = conv2(im,edgeY,'same');

m = sqrt(x.^2 + y.^2);;
m = (m > threshold);

show_image(mag);

end;

