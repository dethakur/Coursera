function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
c_options=[0.01,0.03,0.1,0.3,1,3,10,30];
sigma_options=[0.01,0.03,0.1,0.3,1,3,10,30];

mean_val = 9999;
for i = 1 : size(c_options,2)
    c_val = c_options(i);
    for j = 1 : size(sigma_options,2)
        sigma_val = sigma_options(j)
        model= svmTrain(X, y, c_val, @(X, y) gaussianKernel(X,y, sigma_val));
        predictions = svmPredict(model, Xval);
        mean_error = mean(double(predictions ~= yval));
        if(mean_error < mean_val)
            C = c_val;
            sigma = sigma_val;
            mean_val = mean_error;
        end
    end
end

x = 2;




% =========================================================================

end
