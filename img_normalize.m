

img_d = double(img);
std_val = std(reshape(img_d,1,[]));
mean_val = mean(reshape(img_d,1,[]));
max_val = min(255,mean_val+2*std_val);
min_val = max(0,mean_val-2*std_val);
%max_val = mean_val+2*std_val;
%min_val = mean_val-2*std_val;

img_d2 = (img_d-min_val)/(max_val-min_val)*255;
img_int = uint8(img_d2);

imshow(img);
figure;
histogram(img,'BinWidth',1,'BinLimits',[0 256]);
figure;
imshow(img_int);
figure;
histogram(img_int,'BinWidth',1,'BinLimits',[0 256])
mean_val2 = mean(reshape(img_int,1,[]));