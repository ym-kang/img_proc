function r = mean(mat)

sum = 0;
count = 0;
for i = 1:length(mat)
%     if(mat(i)==0||mat(i)>=255)
%         continue;
%     end
    count = count+1;
    sum = sum + mat(i);
end
r=0;
if(count~=0)
sum = sum/count;
r = sum;
end

end