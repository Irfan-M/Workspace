function m = blur2edge2M(image,blur1,blur2,edgeFilterX,edgeFilterY)

% Applies 1 filter to the image and returns image with magnitude
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgefilterX = e.g. SobelX (edge)
% edgefilterY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)

imF= conv2(image,blur1)
imF2 = conv2(imF,blur2)

imFX = conv2(imF2,edgeFilterX)
imFY = conv2(imF2,edgeFilterY)

m = sqrt(imFX.^2 + imFY.^2);

show_image(m);

end
