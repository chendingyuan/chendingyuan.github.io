function result = txtWrite(data,filename)

%ע�⾫��ֻ��floatֻ��ͼ���ŷ��㣬�õ�ʱ����Ҫע��һ��

[row column] = size(data);

filestream = fopen(filename,'wt');

for i = 1:row
    for j = 1:column
       
        
        
        
        if j == column
            if data(i,j) == 0
                fprintf(filestream,'false');
            else
                fprintf(filestream,'true');
            end
        else
            fprintf(filestream,'%f',data(i,j));
            fprintf(filestream,',');
        end
    end
    fprintf(filestream,'\n');
end

fclose(filestream);

result = 0;