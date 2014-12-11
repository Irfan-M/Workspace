function m = canny(image,imageT)

m = [];
best = [2;0;0];
for i =0:0.1:0.99
        for k = 0.5:0.1:4
                    [i;k]
                    val = RocID(edge(image,'canny',i,k),imageT);
					 manhatt = val(3,:)
                     if (manhatt < best(1,:)) ;best = [manhatt;i;k]; end
                     m = [m  [val(1,:);val(2,:)]];
        end
end 
best
end