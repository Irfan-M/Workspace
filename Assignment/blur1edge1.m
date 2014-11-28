function m = blur1edge1T(image,blur,edgeFilter)

% Applies 1 filter to the image and returns image with magnitude
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgefilterX = e.g. SobelX (edge)
% edgefilterY = e.g. SobelY, robertX (edge)

imF= conv2(image,blur)
m = conv2(imF,edgeFilter)


show_image(m>threshold);

end

