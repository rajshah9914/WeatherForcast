function J=Cost(X,y,theta)

m=length(y);
J=0;


%Cost is:-1/2m*sum((prediction-y).^2)

J = sum((X*theta- y).^2)/(2*m);


end;