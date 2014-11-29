function m = blur1edge2M(image,blur,edgeX,edgeY)

% Applies 1 smooth filter, 2 edge filters to the image and returns image in B/W.
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgeX = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)



imF= conv2(image,blur);

imFX = conv2(imF,edgeX);
imFY = conv2(imF,edgeY);

m = sqrt(imFX.^2 + imFY.^2);
m = im2bw(m,greythresh(m));

show_image(m);

end

