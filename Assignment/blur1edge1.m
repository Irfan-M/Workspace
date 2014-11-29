function m = blur1edge1T(image,blur,edgeFilter)

% Applies 1 smooth filter, 1 edge filter, 1 threshold, to the image and returns image.
% blur = smoothing / noise filter e.g. Laplacian (blur)
% edgefilterX = e.g. SobelX (edge)
% edgefilterY = e.g. SobelY, robertX (edge)

%Note, since this only uses 1 edge filter = This Function is an imcomplete function used for Laplacian. Please add Zero-Crossing to this function



imF= conv2(image,blur);
m = conv2(imF,edgeFilter);
show_image(m);

end

