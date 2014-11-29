function [sensitivity,specificity] = RocID(TrainingImage,TestingImage)

% Calculates the sensitivity index (for the Y axis).
%and the (1- specificity) index (for the X axis).

% PLEASE USE BINARY IMAGES FOR THIS FUNCTION!

TP = sum((TrainingImage == 1) & (TestingImage == 1))
TN = sum((TrainingImage == 0) & (TestingImage == 0))
FP = sum((TrainingImage == 0) & (TestingImage == 1))
FN = sum((TrainingImage == 1) & (TestingImage == 0))

sensitivity = TP / (TP + FN)
specificity = 1 - (TN / (TN + FP))

end

