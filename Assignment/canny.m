function m = canny(image,imageT)

m = [];
best = [];
for i =0:1:100
    p = [];
        for k = 0.5:0.5:3
            im= conv2(image,blur1,'same');
             x = conv2(im,edgeX,'same');
             y = conv2(im,edgeY,'same');   
             im = sqrt(x.^2 + y.^2);  
			[a,b,c] = RocID(edge(im,'canny',i,k),imageT);
					if (c < best) best = [c,i]; end
					p = [p  [a;b]];
		end
    m = [m;p];
end 
best
end