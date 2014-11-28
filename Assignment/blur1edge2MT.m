function m = blur1edge2MT(image,blur,edgeFilterX,edgeFilterY)

% Applies 1 filter to the image and returns image with magnitude
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgefilterX = e.g. SobelX (edge)
% edgefilterY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)


imF= conv2(image,blur)

imFX = conv2(imF,edgeFilterX)
imFY = conv2(imF,edgeFilterY)


m = sqrt(imFX.^2 + imFY.^2);
show_image(m > threshold);

show_image(m);

end

