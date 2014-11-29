function m = edge2M(image,edgeFilterX,edgeFilterY)

% Applies 2 edge filters to the image and returns image in B/W
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgefilterX = e.g. SobelX (edge)
% edgefilterY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% NOTE: image shown is image after magnitude calculation, BUT will return image in B/W (binary). 


imFX = conv2(image,edgeFilterX);
imFY = conv2(image,edgeFilterY);

mag = sqrt(imFX.^2 + imFY.^2);

m = im2bw(mag,greythresh(mag));

show_image(mag);

end
