function m = blur2edge2MT(image,edgeX,edgeY,imageT,bottomThresh)

% Applies 2 smooth filter, 2 edge filters, 1 threshold,  to the image and returns image in B/W
% blur1/2 = smoothing / noise filter e.g. GaussianY (blur)
% edgeX/Y = e.g. SobelY, robertX (edge)
% Also calculates Magnitude. (M)
% image threshold (T)


m = [];
for i = 0:1:100
    p = [];
    for j = 3:1:10
			for k = 1:0.5:3
				 [i,j,k]
					blur1 = N(0,k,linspace(-3,3,j));
					im= conv2(image,blur1,'same');
					im= conv2(im,blur1','same');
					 x = conv2(im,edgeX,'same');
					 y = conv2(im,edgeY,'same');   
					 im = sqrt(x.^2 + y.^2);  
					 p = [p  RocID((im > i),imageT)];
			end
    end
    m = [m;p;];
end 

end

