

function[theta,J_val]=grad_des(theta,alpha,X,y,num_iters)


%Initializing some variables
%m=no. of training examples
%J_val=Cost of the function
%theta=parameters helpful for finding hyposthesis function
%%%%%Perform Gradient Descent
m=length(y);
J_val=zeros(num_iters,1);
prediction=zeros(m,1);
%fprintf("%f",size(X));
s=alpha/m;
for i=1:num_iters
    h = X * theta;
    errors = h - y;
    delta = X' * errors;
    theta = theta - (alpha / m) * delta;
	fprintf("Theta After iteration %d is %d\n",i,theta(1))
	J_val(i) = Cost(X, y, theta);
end
hmn=mean(h);
ymn=mean(y);
err=hmn-ymn;
if((hmn-ymn)<0),
  err=ymn-hmn;
end 
fprintf("Accuracy is %f\n",1-(err/y));
end	
	
	
	
	