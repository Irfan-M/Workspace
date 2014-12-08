function m = laplaceZeroCrosswBlur(image,laplacianOp,imageT)

% Applies 2 smooth filter, 2 edge filters, 1 threshold,  to the image and returns image in B/W
% blur1/2 = smoothing / noise filter e.g. mean3x3/ Gaussian3x3..etc (blur)
% edgeX/Y = e.g. SobelX (edge)
% NOTE: image shown is image after magnitude calculation, BUT will return image in B/W (binary). 
% If you want to calculate using magnitude, function assumes you are using X and Y filters automatically.
% 1 = Magnitude, 1 = Zero Crossing


m = [];
best = [2;0;0;0];

for i = 0:1:100%change
     p = [];
    for j = 3:2:5 %change
            for k = 0.5:0.5:1 %change
                [i,j,k]
                blur1 = N(0,k,linspace(-3,3,j));
                im= conv2(image,blur1,'same');
                im = conv2(im,blur1','same');
                val = RocID(edge(im,'zerocross',i,laplacianOp),imageT);
                manhatt = val(3,:)
                if (manhatt < best(1,:)) ;best = [manhatt;i;j;k]; end
                p = [p  [val(1,:);val(2,:)]];
            end
    end
    m = [m;p];
end 

best
m = p;
end


