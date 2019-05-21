function J = costfunctionJ(X,y,theta)
%COSTFUNCTIONJ 이 함수의 요약 설명 위치
%   X is the "design matrix" containing our training examples.
%   y is the class labels

m = size(X,1); % number of training examples
predictions = X*theta; % predictions of hypothesis on all m examples
sqrErrors = (predictions-y).^2; % squared errors

J = 1/(2*m) * sum(sqrErrors);

end

