close all;clc; 
corr_confusion_matrix=zeros(7,7); %Assume that there are 7(n) pictures inn your folder, so matrix will be 7*7 (n*n)
for i=1:7
    for j=1:7
        myFolder='C:\Users\Mahsa\Desktop\Tasks\9-#P3094-skin-matlab-cnn\cnn_skin\Correlation\Correlation\another\';
        
        i_value= i;
        output_file_i = [num2str(i_value) '.jpg'];
        im1 = imread(fullfile(myFolder, output_file_i));
        
        j_value= j;
        output_file_j=[num2str(j_value)  '.jpg'];
        im2 = imread(fullfile(myFolder, output_file_j ));
        alpha= corrcoef(double(im1(:)),double(im2(:)));
        
        corr_confusion_matrix(i,j) = alpha(1,2);
    end 
end 

figure, imagesc(corr_confusion_matrix),colorbar

