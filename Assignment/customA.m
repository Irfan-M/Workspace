function m = customA(image,smoothX,smoothY,edgeX,edgeY,MagoZeroC,thres)

% Applies 2 smooth filter, 2 edge filters, 1 threshold,  to the image and returns image in B/W
% smoothX/Y = smoothing / noise filter e.g. GaussianY (blur)
% edgeX/Y = e.g. SobelX (edge)
% NOTE: image shown is image after magnitude calculation, BUT will return image in B/W (binary). 
% If you want to calculate using magnitude, function assumes you are using X and Y filters automatically.
% 1 = Magnitude, 1 = Zero Crossing

if (length(blur1) ~= 1) 
im = conv2(image,blur1);
end
if (length(blur2) ~= 1) 
	im = conv(im,blur2); 
end
		
if (MagoZeroC == 0) 
		if (threshold ~= -1)
			m = edge(im,'zerocross',threshold,edgeX)
		else
			m = edge(im,'zerocross',,edgeX)
		end	
else
		imX = conv2(im,edgeX); 
		imY = conv2(im,edgeY); 
		
		if (size(imX) ~= size(imY))
			%From lecturers' clip function?
			xdiff=(size(imX,1)-size(imY,1))./2;
			ydiff=(size(imY,2)-size(imX,2))./2;		
			imX = imX(xdiff+1:(size(imX,1)-xdiff),:);
			imY = imY(:,ydiff+1:(size(imY,2)-ydiff));
		end
		im = sqrt(imX.^2 + imY.^2);

		if (threshold ~= -1)
			im = im > threshold;
			m = im2bw(im,greythresh(im));
		else
			m = im2bw(im,greythresh(im));
		end
				
end

show_image(m);

end;

