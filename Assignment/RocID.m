function m = RocID(TestingImage,TrainingImage)

% Calculates the sensitivity index (for the Y axis).
%and the (1- specificity) index (for the X axis).

% PLEASE USE BINARY IMAGES FOR THIS FUNCTION!


TP = sum(sum((TrainingImage == 1) & (TestingImage == 1)));
TN = sum(sum((TrainingImage == 0) & (TestingImage == 0)));
FP = sum(sum((TrainingImage == 0) & (TestingImage == 1)));
FN = sum(sum((TrainingImage == 1) & (TestingImage == 0)));

specificity = 1 - (TN / (TN + FP));
sensitivity = TP / (TP + FN);

%Checks value of position (Lower better)
manhattD = sqrt((1- sensitivity).^2 + specificity.^2)

m = [specificity;sensitivity;manhattD];

end

