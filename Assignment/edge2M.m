function m = edge2M(image,edgeX,edgeY)

% Applies 2 edge filters to the image and returns image in B/W
% edgeX/Y = e.g. SobelX (edge)
% Also calculates Magnitude. (M)


x = conv2(image,edgeY,'same');
y = conv2(image,edgeY,'same');

m = sqrt(x.^2 + y.^2);

m = im2bw(m);

show_image(m);

end
