files = dir('SSIP/*.csv');
sdata = length(files);

countedValues = zeros(1,4);
correctValues = zeros(1,4);
data = zeros(1,sdata);
for j = 1:length(files)
    data = importdata(strcat('SSIP/',files(j).name));
    a = data(1,:) - data(2,:);    
    for jj = 1:length(data(1,:))
        if a(jj)==0
            correctValues(data(1,jj)) = correctValues(data(1,jj))+1;
        end
        countedValues(data(1,jj)) = countedValues(data(1,jj)) + 1;            
    end
    b = nnz(~a);
end
correctValues
countedValues
dataToPlot = (correctValues./countedValues)*100;
figure;        
bar(dataToPlot, 'r');
xlabel('1-Happy  2-Sad  3-Neutral  4-Angry');
ylabel('% of right guess');