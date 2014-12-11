function m = blur1edge2MT(image,edgeX,edgeY,imageT,step)

% Applies 1 smooth filter, 2 edge filters, 1 threshold, to the image and returns image in B/W.
% blur1 = smoothing / noise filter e.g. Laplacian (blur)
% edgeY = e.g. SobelX (edge)
% edgeY = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)


m = [];
best = [2;0;0];

for i =0:step:100
    for j = 1:2:10
        [i,j];
            blur1 = repmat(1/(j*j),j,j);
            im= conv2(image,blur1,'same');
            x = conv2(im,edgeX,'same');
            y = conv2(im,edgeY,'same');   
            im = sqrt(x.^2 + y.^2);  
val = (RocID((im > i),imageT));
            manhatt = val(3,:);
            if (manhatt < best(1,:)) ;best = [manhatt;i;j]; end
            m = [m  [val(1,:);val(2,:)]];
    end
end 

best


end