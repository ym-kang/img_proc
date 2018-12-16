function r = std(mat)

sum = 0;
count = 0;
for i = 1:length(mat)
     if(mat(i)==0||mat(i)>=127)
         continue;
     end
    count = count+1;
    sum = sum + mat(i);
end
r=0;
mean = 0;
if(count~=0)
sum = sum/count;
mean = sum;
end

sum = 0;
for i = 1:length(mat)
     if(mat(i)==0||mat(i)>=127)
         continue;
     end
    sum = sum+ (mat(i)-mean)^2;
end
if(count-1>0)
    r= sqrt(sum/(count-1));
end

end