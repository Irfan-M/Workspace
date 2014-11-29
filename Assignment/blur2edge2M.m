function m = blur2edge2M(image,blur1,blur2,edgeFilterX,edgeFilterY)

% Applies 2 smooth filter, 2 edge filters to the image and returns image in B/W
% blur = smoothing / noise filter e.g. GaussianX (blur)
% edgefilterX = e.g. SobelX (edge)
% edgefilterY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% NOTE: image shown is image after magnitude calculation, BUT will return image in B/W (binary). 



imF= conv2(image,blur1);
imF2 = conv2(imF,blur2);

imFX = conv2(imF2,edgeFilterX);
imFY = conv2(imF2,edgeFilterY);

mag = sqrt(imFX.^2 + imFY.^2);

m = im2bw(mag,greythresh(mag));

show_image(mag);

end
