function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
rows = size(z,1);
columns = size(z,2);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


for row = 1: rows
	for column = 1: columns
		g(row,column) = 1/(1+exp(z(row,column)*-1));
	end
end
% =============================================================

end
