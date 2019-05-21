function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad
m = length(y); % number of training examples

% Initialize some useful values
J = 1/(2*m)* sum((X*theta - y).^2) + lambda/(2*m)*sum(theta(2:end).^2);
grad = 1/m*sum((X*theta - y).*X,1);
grad = grad';
grad(1) = grad(1);
grad(2:end) = grad(2:end) + lambda/m*theta(2:end);

% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
