function m = edge2M(image,edgeY,edgeY)

% Applies 2 edge filters to the image and returns image in B/W
% edgeY = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)


imFX = conv2(image,edgeY);
imFY = conv2(image,edgeY);

m = sqrt(imFX.^2 + imFY.^2);

m = im2bw(m,greythresh(m));

show_image(m);

end
