function m = laplaceZeroCrosswBlur(image,blur1,laplacianOp,imageT)

% Applies 2 smooth filter, 2 edge filters, 1 threshold,  to the image and returns image in B/W
% blur1/2 = smoothing / noise filter e.g. mean3x3/ Gaussian3x3..etc (blur)
% edgeX/Y = e.g. SobelX (edge)
% NOTE: image shown is image after magnitude calculation, BUT will return image in B/W (binary). 
% If you want to calculate using magnitude, function assumes you are using X and Y filters automatically.
% 1 = Magnitude, 1 = Zero Crossing

m = [];
best = [];
for i =0:1:100
    p = [];
    for j = 1:2:15
        for k = 0.5:0.5:3
				 [i,j,k]
            blur1 = N(0,k,linspace(-3,3,j));
            im= conv2(image,blur1,'same');
             x = conv2(im,edgeX,'same');
             y = conv2(im,edgeY,'same');   
             im = sqrt(x.^2 + y.^2);  
             [a,b,c] = RocID(edge(image,'zerocross',i,laplacianOp),imageT);
					if (c < best) best = [c,i]; end
					p = [p  [a;b]];
		end
    end
    m = [m;p];
end 

best
end


