function m = blur1edge2MT(image,blur1,edgeX,edgeY,threshold)

% Applies 1 smooth filter, 2 edge filters, 1 threshold, to the image and returns image in B/W.
% blur1 = smoothing / noise filter e.g. Laplacian (blur)
% edgeY = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)


im= conv2(image,blur1,'same');

x = conv2(im,edgeX,'same');
y = conv2(im,edgeY,'same');

m = sqrt(x.^2 + y.^2);;
m = (m > threshold);

show_image(m);

end

