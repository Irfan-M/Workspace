function m = blur1edge2MT(image,edgeX,edgeY,imageT,bottomThresh)

% Applies 1 smooth filter, 2 edge filters, 1 threshold, to the image and returns image in B/W.
% blur1 = smoothing / noise filter e.g. Laplacian (blur)
% edgeY = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)


m = [];
best = [];

for i =0:1:100
    p = [];
    for j = 1:2:10
        [i,j]
            blur1 = repmat(1/(j*j),j,j);
            im= conv2(image,blur1,'same');
            x = conv2(im,edgeX,'same');
            y = conv2(im,edgeY,'same');   
            im = sqrt(x.^2 + y.^2);  
			[a,b,c] = (RocID((im > i),imageT);
			if (c < best) best = [c,i]; end
			p = [p  [a;b]];
    end
    m = [m;p];
end 

best


end

