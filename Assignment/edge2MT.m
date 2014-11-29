function m = edge2MT(image,edgefilterX,edgefilterY,threshold)

% Applies 2 edge filters, 1 threshold, to the image and returns image in B/W
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgefilterX = e.g. SobelX (edge)
% edgefilterY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)
% NOTE: image shown is image after magnitude calculation, BUT will return image in B/W (binary). 


imFX = conv2(image,edgeFilterX);
imFY = conv2(image,edgeFilterY);

mag = sqrt(imFX.^2 + imFY.^2);
mag2 = (m > threshold);

m = im2bw(mag2,greythresh(mag2));

show_image(mag);

end
