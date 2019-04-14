function [data] = features(dataraw)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%dataraw=dataraw1(:,1:36);% containing first 36 features from original data
%set number1:length/area features
x1=dataraw(:,3)./dataraw(:,11).^2;
x2=dataraw(:,6)./dataraw(:,7).^2;
x3=dataraw(:,8)./dataraw(:,11).^2;
x4=dataraw(:,8)./dataraw(:,21).^2;
x5=dataraw(:,13)./dataraw(:,7).^2;
x6=dataraw(:,19)./dataraw(:,11).^2;
x7=dataraw(:,29)./dataraw(:,23).^2;
x8=dataraw(:,35)./dataraw(:,11).^2;
x9=dataraw(:,35)./dataraw(:,21).^2;
x10=dataraw(:,35)./dataraw(:,24).^2;
y1=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10];

%set number2:area/volume features
x11=(dataraw(:,8).^2)./dataraw(:,27).^3;
% x12=(dataraw(:,35).^2)./dataraw(:,9).^3;
 y2=[x11 ];

%set number3:length/vol features
x31=(dataraw(:,8))./dataraw(:,11).^3;
x32=(dataraw(:,35))./dataraw(:,11).^3;
x33=dataraw(:,36)./dataraw(:,11).^3;
x34=dataraw(:,31)./dataraw(:,23).^3;
  y3=[x31 x32 x33 x34];
%set number4:length/vol features
%x41=(dataraw(:,9))./norm(dataraw(:,26).^2-dataraw(:,9).^2) ;
x42=(dataraw(:,12))./norm(dataraw(:,27).^2-dataraw(:,12).^2) ;
mm=dataraw(:,35)./dataraw(:,24).^2;%the 10th feature of data type1
x43=(mm)./norm(dataraw(:,27).^2-mm.^2) ;
y4=1./[x42 x43];
%set number5:mode of all 36 basic features


data=[y1 y2 y3 y4 ];
%clear x41 x42 x43 x31 x32 x33 x34 x11 x12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 y1 y2 y3 y4  mm
end



