function m = edge2MT(image,filterX,edgefilterY,threshold)

% Applies 1 filter to the image and returns image with magnitude
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgefilterX = e.g. SobelX (edge)
% edgefilterY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)


imFX = conv2(image,edgeFilterX)
imFY = conv2(image,edgeFilterY)

m = sqrt(imFX.^2 + imFY.^2);

show_image(m>threshold);
