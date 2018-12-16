function [r] = norm(frame)
%NORM Summary of this function goes here
%   Detailed explanation goes here


img_d = double(frame);
std_val = std(reshape(img_d,1,[]))
mean_val = mean(reshape(img_d,1,[]))
max_val = min(255,mean_val+2*std_val);
min_val = max(0,mean_val-2*std_val);
max_val,min_val
%max_val = mean_val+2*std_val;
%min_val = mean_val-2*std_val;

img_d2 = (img_d-min_val)/(max_val-min_val)*255;
%img_d2 = (img_d-mean_val)/std_val*127+127;
img_int = uint8(img_d2);
r= img_int;


subplot(2,2,1);
imshow(frame);
subplot(2,2,2);
histogram(frame,'BinWidth',1,'BinLimits',[0 256]);
subplot(2,2,3);
imshow(img_int);
subplot(2,2,4);
histogram(img_int,'BinWidth',1,'BinLimits',[0 256])
pause(0.01);
mean_val2 = mean(reshape(img_int,1,[]));
end

