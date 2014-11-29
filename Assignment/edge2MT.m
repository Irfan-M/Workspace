function m = edge2MT(image,edgeY,edgeY,threshold)

% Applies 2 edge filters, 1 threshold, to the image and returns image in B/W
% edgeY = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)

imFX = conv2(image,edgeY);
imFY = conv2(image,edgeY);

m = sqrt(imFX.^2 + imFY.^2);
m = (m > threshold);

m = im2bw(m,greythresh(m));

show_image(m);

end
