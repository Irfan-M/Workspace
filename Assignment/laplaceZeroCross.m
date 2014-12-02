function m = laplaceZeroCross(image,blur1,blur2,laplacianOp,threshold)

% Applies 2 smooth filter, 2 edge filters, 1 threshold,  to the image and returns image in B/W
% blur1/2 = smoothing / noise filter e.g. mean3x3/ Gaussian3x3..etc (blur)
% edgeX/Y = e.g. SobelX (edge)
% NOTE: image shown is image after magnitude calculation, BUT will return image in B/W (binary). 
% If you want to calculate using magnitude, function assumes you are using X and Y filters automatically.
% 1 = Magnitude, 1 = Zero Crossing

im = image;
if (blur1 ~= 0) 
	im = conv2(image,blur1);
end
if (blur2 ~= 0) 
	im = conv(im,blur2); 
end

m = edge(im,'zerocross',threshold,laplacianOp)

show_image(m);

end;

