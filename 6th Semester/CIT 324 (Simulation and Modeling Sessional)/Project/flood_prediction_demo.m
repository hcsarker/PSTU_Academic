%% Flood Prediction Demo - MATLAB
% Quick prototype: logistic regression based flood risk prediction
% Input features: Rainfall (mm), River Level (m), Soil Moisture (%)
% NOTE: flood_data_sample.csv is SYNTHETIC sample data for demo purposes.
% Replace with real BMD/BWDB data before final submission.

clear; clc; close all;

%% 1. Load data
data = readtable('flood_data_sample.csv');

X = [data.Rainfall_mm, data.RiverLevel_m, data.SoilMoisture_pct];
Y = data.Flood;

%% 2. Train/test split (80/20)
rng(1); % reproducibility
n = height(data);
idx = randperm(n);
trainIdx = idx(1:round(0.8*n));
testIdx  = idx(round(0.8*n)+1:end);

Xtrain = X(trainIdx,:); Ytrain = Y(trainIdx);
Xtest  = X(testIdx,:);  Ytest  = Y(testIdx);

%% 3. Train logistic regression model
mdl = fitglm(Xtrain, Ytrain, 'Distribution', 'binomial', ...
    'VarNames', {'Rainfall','RiverLevel','SoilMoisture','Flood'});
disp(mdl);

%% 4. Evaluate on test set
Ypred_prob = predict(mdl, Xtest);
Ypred = double(Ypred_prob >= 0.5);   % cast to double so it matches Ytest's type
Ytest = double(Ytest);

accuracy = mean(Ypred == Ytest) * 100;
fprintf('\nTest Accuracy: %.1f%%\n', accuracy);

confMat = confusionmat(Ytest, Ypred);
disp('Confusion Matrix [TN FP; FN TP]:');
disp(confMat);

%% 5. Live prediction demo (change these values live during presentation)
rainfall_input    = 95;   % mm
riverlevel_input  = 3.9;  % m
soilmoisture_input = 57;  % %

risk_prob = predict(mdl, [rainfall_input, riverlevel_input, soilmoisture_input]);
fprintf('\n--- LIVE DEMO PREDICTION ---\n');
fprintf('Rainfall: %d mm | River Level: %.1f m | Soil Moisture: %d%%\n', ...
    rainfall_input, riverlevel_input, soilmoisture_input);
fprintf('Predicted Flood Probability: %.1f%%\n', risk_prob*100);
if risk_prob >= 0.5
    disp('=> RISK LEVEL: HIGH (Flood likely)');
else
    disp('=> RISK LEVEL: LOW (Flood unlikely)');
end

%% 6. Plots for presentation
figure('Name','Flood Prediction Demo');

subplot(1,2,1);
gscatter(data.Rainfall_mm, data.RiverLevel_m, data.Flood, 'gr', 'ox');
xlabel('Rainfall (mm)'); ylabel('River Level (m)');
title('Flood Occurrence by Rainfall & River Level');
legend('No Flood','Flood','Location','northwest');
grid on;

subplot(1,2,2);
rainfall_range = linspace(0,150,50)';
riverlevel_fixed = mean(data.RiverLevel_m) * ones(50,1);
soil_fixed = mean(data.SoilMoisture_pct) * ones(50,1);
prob_curve = predict(mdl, [rainfall_range, riverlevel_fixed, soil_fixed]);
plot(rainfall_range, prob_curve*100, 'LineWidth', 2);
xlabel('Rainfall (mm)'); ylabel('Predicted Flood Probability (%)');
title('Flood Risk vs Rainfall (model curve)');
grid on;

sgtitle('Flood Prediction Model - Demo Output');
