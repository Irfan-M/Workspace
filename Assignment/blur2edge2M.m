function m = blur2edge2M(image,blur1,blur2,edgeX,edgeY)

% Applies 2 smooth filter, 2 edge filters to the image and returns image in B/W
% blur = smoothing / noise filter e.g. GaussianX (blur)
% edgeX = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)



imF= conv2(image,blur1);
imF2 = conv2(imF,blur2);

imFX = conv2(imF2,edgeX);
imFY = conv2(imF2,edgeY);

m = sqrt(imFX.^2 + imFY.^2);

m = im2bw(m,greythresh(m));

show_image(m);

end
