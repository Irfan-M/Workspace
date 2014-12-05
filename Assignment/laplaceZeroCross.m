function m = laplaceZeroCross(image,laplacianOp,imageT)

% Applies 2 smooth filter, 2 edge filters, 1 threshold,  to the image and returns image in B/W
% blur1/2 = smoothing / noise filter e.g. mean3x3/ Gaussian3x3..etc (blur)
% edgeX/Y = e.g. SobelX (edge)
% NOTE: image shown is image after magnitude calculation, BUT will return image in B/W (binary). 
% If you want to calculate using magnitude, function assumes you are using X and Y filters automatically.
% 1 = Magnitude, 1 = Zero Crossing

im = edge(image,'zerocross',20,laplacianOp);
show_image(im);

p = [];
best = [];

for i = 1:0.5:100
					[a,b,c] = RocID(edge(image,'zerocross',i,laplacianOp),imageT);
					if (c < best) best = [c,i]; end
					p = [p  [a;b]];

end 
m = p;
end
best

end

