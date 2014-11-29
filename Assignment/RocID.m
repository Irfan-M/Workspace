function [specificity,sensitivity] = RocID(TrainingImage,TestingImage)

% Calculates the sensitivity index (for the Y axis).
%and the (1- specificity) index (for the X axis).

% PLEASE USE BINARY IMAGES FOR THIS FUNCTION!

im = imread(['',TrainingImage]);
image = im(:,:,2); 
image = double(image);
image = im2bw(image,greythresh(image));


TP = sum((image == 1) & (TestingImage == 1))
TN = sum((image == 0) & (TestingImage == 0))
FP = sum((image == 0) & (TestingImage == 1))
FN = sum((image == 1) & (TestingImage == 0))

sensitivity = TP / (TP + FN)
specificity = 1 - (TN / (TN + FP))

end

