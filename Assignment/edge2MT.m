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
best = [2;0];

for i = 0:1:100
	 i;
	 val = (RocID((im > i),imageT));
     manhatt = val(3,:);
	 if (manhatt < best(1,:)) ;best = [manhatt;i]; end
	 p = [p  [val(1,:);val(2,:)]];
end 

best
m = p;

end
