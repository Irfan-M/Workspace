function m = blur1edge2MT(image,blur,edgeY,edgeY,threshold)

% Applies 1 smooth filter, 2 edge filters, 1 threshold, to the image and returns image in B/W.
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgeY = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)



imF= conv2(image,blur);

imFX = conv2(imF,edgeY);
imFY = conv2(imF,edgeY);

m = sqrt(imFX.^2 + imFY.^2);
m = (m > threshold);

m = im2bw(m,greythresh(m));
show_imaage(m);

end

