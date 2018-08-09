clear;close all;clc;
data=dlmread('weather_data.txt');
dates=data(:,1);
X=data(:,2:3);
y=data(:,4);
m=length(y);
fprintf("%f",size(X));
fprintf('No. of examples:-%f\n',m);
fprintf('First 10 examples from dataset:\n');
fprintf('dates=%.0f x=[%.0f %.0f] ,y=%.0f \n',[dates(1:10,:),X(1:10,:),y(1:10,:)]');

fprintf('Program paused. Press enter to continue.\n');
pause;

% Add intercept term to X
fprintf('Normalizing Features ...\n');

%[X me sig] = feature_normalize(X);
%%Padding 1 as bias
X = [ones(m, 1) data(:,2:3)];
X=X(2:end,:);
y=y(2:end,:);
%fprintf("%f",size(X));
%X=367*3;
alpha=0.00001;
num_iters=100;
theta=zeros(3,1);
[theta,J_val]=grad_des(theta,alpha,X,y,num_iters);
%theta=(inv(X' * X)) * (X' * y)
%display of gradient descent;
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');


day_temp= 0;

% ============================================================
day_temp=[1 50 38]*theta;
fprintf(['Predicted temp. of a day with max. and min. temp as 50.00C and 38.00C' ...
         '(using gradient descent):\n%f\n'],day_temp );
%acc=1-(45-day_temp)/45;
%fprintf("Accuracy=%f\n",acc);

