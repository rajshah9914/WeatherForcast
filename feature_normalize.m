function[X_norm,me,sig]=feature_normalize(X)
X_norm=X;
me=zeros(1,size(X,2));
sig=zeros(1,size(X,2));

me=mean(X);
sig=std(X);
for i=1:size(X,2)
  %fprintf("%f",X(:,1));
  Xminus=X(:,i)-me(i);
  X_norm=Xminus/sig(i);

end

end;