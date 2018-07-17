files = dir('SSIP/*.csv');
sdata=length(files);
dataToPlot = zeros(1, sdata);
data = zeros(1,sdata);
for j = 1:length(files)
    data = importdata(strcat('SSIP/',files(j).name));
    a = data(1,:)-data(2,:);
    b = nnz(~a);
    dataToPlot(j) = (b/length(a))*100;
end
figure;        
bar(dataToPlot);
xlabel('Number of users');
ylabel('% of right guess');