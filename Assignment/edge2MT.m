function m = edge2MT(image,edgeX,edgeY,imageT)

% Applies 2 edge filters, 1 threshold, to the image and returns image in B/W
% edgeY = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)
% imageT = training Image

x = conv2(image,edgeX,'same');

y = conv2(image,edgeY,'same');

im = sqrt(x.^2 + y.^2);

p = [];
for i = 0:1:100
 i
 p = [p  RocID((im > i),imageT)];
end 
m = p;


end
