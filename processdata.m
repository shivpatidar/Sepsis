function [proc_data_A] = processdata(data_A,mu,stdd)
traindata2=(data_A-mu)./stdd;
for clm=1:40
% %     
traindata2(isnan(traindata2(:,clm)),clm)=0;
end
%for extened data--proposed features
traindata3=data_A;
for clm=1:40
% %     
traindata3(isnan(traindata3(:,clm)),clm)=mu(clm);
end

 traindata4=features(traindata3(:,1:36));
 
% %process this with its mean1 and std1
%traindata5=(traindata4-mu1)./stdd1;
traindata5=normalize(traindata4);
for clm=1:17
% %     
traindata5(isnan(traindata5(:,clm)),clm)=0;
end
 proc_data_A=[traindata2 traindata5];
end

