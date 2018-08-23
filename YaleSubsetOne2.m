function [ErrorRate Recongition processingTime imgS] = YaleSubsetOne2(TrainDatabasePath)
tic
addpath('LTV');
addpath('LTV/PrMF-v2.32/');
addpath('l1magic-1.11/l1magic/Optimization/');
SubsetOneLabels = cell(1,60);
targetLabel = 1;
countTrain = 1;
countImg = 1;
countInd = 1;
sumN = 6;
kappa             =   [0.001]; 
TrainFiles = dir(TrainDatabasePath);
Train_Number = 0;

for i = 1:size(TrainFiles,1)
    if not(strcmp(TrainFiles(i).name,'.')|strcmp(TrainFiles(i).name,'..')|strcmp(TrainFiles(i).name,'Thumbs.db'))
        Train_Number = Train_Number + 1; % Number of all images in the training database
    end
end
%--------------------------------------------------------------------------
%Training Data
 for i = 1:Train_Number
  
     if (countTrain<2)
        str = int2str(i);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath,str);
    
   
    fprintf(1,'loading PGM file %s\n',str);
	 Img = imread(str)   ; 
%LTV function    
 [u v] = LTV(Img, 0.2);
     

 k = mat2gray(v);
 
   kk = mat2gray(u);
   k = (k);
   kk = (kk);
   res = (0.0*kk)+(1*k);
  
    Tmp_Image_Down_Sampled = (res);

     
        Image_Data_Matrix(:,countImg) = Tmp_Image_Down_Sampled(:);
 
      countImg = countImg+1;
     end
    if mod(i ,7) == 0
      targetLabel = targetLabel+1;
        countTrain = 1;
         nn(1,countInd) = sumN;
         sumN = sumN+6;
         countInd = countInd+1;
    else
        
         countTrain = countTrain+1;
    end
     end;
   targetLabel = 1;  
     for i=1:20
             if mod(i ,1) == 0
   
        SubsetOneLabels{1,i} = (targetLabel); 
        targetLabel = targetLabel+1;
    else
        
         SubsetOneLabels{1,i} = (targetLabel); 
    end
     end
	  imgS = Img;
 fprintf(1,'Saving the "Images" and "Labels" into the current directry\n'); 
save YaleSubsetOnePictures Image_Data_Matrix;
save YaleSubsetOneLabels SubsetOneLabels;


%Testing Data
targetLabel = 1;
countTrain = 1;
countImg = 1;
 for i = 1:Train_Number
  
     if (countTrain>1&&countTrain<8)
       str = int2str(i);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath,str);
    
   
    fprintf(1,'loading PGM file %s\n',str);
	 Img = imread(str) ;  
    % LTV function
     
   [u v] = LTV(Img, 0.2);
     

 k = mat2gray(v);
 
   kk = mat2gray(u);
   k = (k);
   kk = (kk);
   res = (0.0*kk)+(1*k);
  
    Tmp_Image_Down_Sampled = (res);
     Image_Data_MatrixTest(:,countImg) = Tmp_Image_Down_Sampled(:);
  
      countImg = countImg+1;
     end
    if mod(i ,7) == 0
        targetLabel = targetLabel+1;
        countTrain = 1;
    else
       
         countTrain = countTrain+1;
    end
     end;
     Tr_DAT = Image_Data_Matrix;
     Tt_DAT = Image_Data_MatrixTest;
    

%-------------------------------------------------------------------------
%projection matrix computing
Proj_M = (Tr_DAT'*Tr_DAT+kappa*eye(size(Tr_DAT,2)))\Tr_DAT';


%-------------------------------------------------------------------------

     ID = [];
     trls =  cell2mat(SubsetOneLabels);
%Collaborative function     
for testImg=1:120
      
y =  Tt_DAT(:,testImg);
    [id]    = CRC_RLS(Tr_DAT,Proj_M, Tt_DAT(:,testImg),trls);
    ID      =   [ID id];
    classes(testImg) = id ; 
end
     
     

     %%%%CLASSESS PREDICTION
     
     count = 1;
class = 1;
t=0;
for e=1:120;
        if (count == 7) 
            class = class+1;
        count = 1;
        end
        count = count+1;
        if classes(e) == class
            t = t+1;
        end
end
     
ErrorRate= 100-(t/120)*100
Recongition = (t/120)*100
processingTime = toc
end

