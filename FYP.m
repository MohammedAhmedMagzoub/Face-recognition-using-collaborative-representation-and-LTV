function varargout = FYP(varargin)
% FYP MATLAB code for FYP.fig
%      FYP, by itself, creates a new FYP or raises the existing
%      singleton*.
%
%      H = FYP returns the handle to a new FYP or the handle to
%      the existing singleton*.
%
%      FYP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FYP.M with the given input arguments.
%
%      FYP('Property','Value',...) creates a new FYP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FYP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FYP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FYP

% Last Modified by GUIDE v2.5 11-Sep-2016 08:02:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FYP_OpeningFcn, ...
                   'gui_OutputFcn',  @FYP_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before FYP is made visible.
function FYP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FYP (see VARARGIN)

% Choose default command line output for FYP
handles.output = hObject;
set(handles.axes1,'Visible','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FYP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FYP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 
% [ErrorRate Recongition processingTime] = YaleSubsetOne1(TrainDatabasePath);
% 
% set(handles.txtError,'String',num2str(ErrorRate))
% set(handles.txtRecognition,'String',num2str(Recongition))
% set(handles.txtProcessing,'String',num2str(processingTime))

function txtError_Callback(hObject, eventdata, handles)
% hObject    handle to txtError (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtError as text
%        str2double(get(hObject,'String')) returns contents of txtError as a double


% --- Executes during object creation, after setting all properties.
function txtError_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtError (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtRecognition_Callback(hObject, eventdata, handles)
% hObject    handle to txtRecognition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtRecognition as text
%        str2double(get(hObject,'String')) returns contents of txtRecognition as a double


% --- Executes during object creation, after setting all properties.
function txtRecognition_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtRecognition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtProcessing_Callback(hObject, eventdata, handles)
% hObject    handle to txtProcessing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtProcessing as text
%        str2double(get(hObject,'String')) returns contents of txtProcessing as a double


% --- Executes during object creation, after setting all properties.
function txtProcessing_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtProcessing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

TrainDatabasePath1 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
[ErrorRate1 Recongition1 processingTime1 Img] = YaleSubsetOne1(TrainDatabasePath1);

axes(handles.axes1);
imshow(Img);
set(handles.txtError,'String',num2str(ErrorRate1))
set(handles.txtRecognition,'String',num2str(Recongition1))
set(handles.txtProcessing,'String',num2str(processingTime1))


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TrainDatabasePath2 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
[ErrorRate2 Recongition2 processingTime2 Img] = YaleSubsetOne2(TrainDatabasePath2);

axes(handles.axes1);
imshow(Img);
set(handles.txtError,'String',num2str(ErrorRate2))
set(handles.txtRecognition,'String',num2str(Recongition2))
set(handles.txtProcessing,'String',num2str(processingTime2))



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TrainDatabasePath3 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
[ErrorRate3 Recongition3 processingTime3 Img] = YaleSubsetOne3(TrainDatabasePath3);

axes(handles.axes1);
imshow(Img);
set(handles.txtError,'String',num2str(ErrorRate3))
set(handles.txtRecognition,'String',num2str(Recongition3))
set(handles.txtProcessing,'String',num2str(processingTime3))


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TrainDatabasePath4 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
[ErrorRate4 Recongition4 processingTime4 Img] = YaleSubsetOne4(TrainDatabasePath4);

axes(handles.axes1);
imshow(Img);
set(handles.txtError,'String',num2str(ErrorRate4))
set(handles.txtRecognition,'String',num2str(Recongition4))
set(handles.txtProcessing,'String',num2str(processingTime4))


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TrainDatabasePath5 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
[ErrorRate5 Recongition5 processingTime5 Img] = YaleSubsetOne5(TrainDatabasePath5);

axes(handles.axes1);
imshow(Img);
set(handles.txtError,'String',num2str(ErrorRate5))
set(handles.txtRecognition,'String',num2str(Recongition5))
set(handles.txtProcessing,'String',num2str(processingTime5))


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TrainDatabasePath1 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
startingFolder = 'C:\Program Files\MATLAB';
if ~exist(startingFolder, 'dir')
	% If that folder doesn't exist, just start in the current folder.
	startingFolder = pwd;
end
% Get the name of the file that the user wants to use.
defaultFileName = fullfile(startingFolder, '*.*');
[baseFileName, folder] = uigetfile(defaultFileName, 'Select a file');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end
fullFileName = fullfile(folder, baseFileName);
myImage = imread(fullFileName);
ImgTest = myImage ;     
figure,imshow(ImgTest);
Tmp_Image_Down_Sampled = double(imresize(ImgTest,[8 7]));
Image_Data_MatrixTest(:,1) = Tmp_Image_Down_Sampled(:);

SubsetOneLabels = cell(1,120);
targetLabel = 1;
countTrain = 1;
countImg = 1;
countInd = 1;
sumN = 6;
kappa             =   [0.001]; 
TrainFiles = dir(TrainDatabasePath1);
Train_Number = 0;

for i = 1:size(TrainFiles,1)
    if not(strcmp(TrainFiles(i).name,'.')|strcmp(TrainFiles(i).name,'..')|strcmp(TrainFiles(i).name,'Thumbs.db'))
        Train_Number = Train_Number + 1; % Number of all images in the training database
    end
end
%-------------------------------------------------------------------------
%Training images 
 for i = 1:Train_Number
     
  
     if (countTrain<7)
     str = int2str(i);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath1,str);
    
   
    fprintf(1,'loading PGM file %s\n',str);
	 Img = imread(str)   ;
     Tmp_Image_Down_Sampled = double(imresize(Img,[8 7]));
        Image_Data_Matrix(:,countImg) = Tmp_Image_Down_Sampled(:);
 
      countImg = countImg+1;
     end
    if mod(i ,12) == 0
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
     for i=1:120
             if mod(i ,6) == 0
      
        SubsetOneLabels{1,i} = (targetLabel); 
        targetLabel = targetLabel+1;
    else
       
         SubsetOneLabels{1,i} = (targetLabel); 
    end
     end

 Tr_DAT = Image_Data_Matrix;
 Tt_DAT = Image_Data_MatrixTest;
 
Proj_M = (Tr_DAT'*Tr_DAT+kappa*eye(size(Tr_DAT,2)))\Tr_DAT';

%-------------------------------------------------------------------------
%-------------------------------------------------------------------------

     ID = [];
     trls =  cell2mat(SubsetOneLabels);
%------------------------------------------------------------------------
%collborative function 

      
y =  Tt_DAT(:,1);
    [id]    = CRC_RLS(Tr_DAT,Proj_M, Tt_DAT(:,1),trls);
    ID      =   [ID id];
 

 matchedImage = id
selectedImg = Img;
figure,imshow(ImgTest),title('Testing Image');
 str = int2str(matchedImage*12);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath1,str);
	 Img = imread(str);   
     figure,imshow(Img),title('Matched Image');




function txtS1_Callback(hObject, eventdata, handles)
% hObject    handle to txtS1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtS1 as text
%        str2double(get(hObject,'String')) returns contents of txtS1 as a double


% --- Executes during object creation, after setting all properties.
function txtS1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtS1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
startingFolder = 'C:\Program Files\MATLAB';
if ~exist(startingFolder, 'dir')
	% If that folder doesn't exist, just start in the current folder.
	startingFolder = pwd;
end
% Get the name of the file that the user wants to use.
defaultFileName = fullfile(startingFolder, '*.*')
[baseFileName, folder] = uigetfile(defaultFileName, 'Select a file');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end
fullFileName = fullfile(folder, baseFileName);
myImage = imread(fullFileName);
ImgTest = myImage ;
Tmp_Image_Down_Sampled = double(ImgTest);
Image_Data_MatrixTest(:,1) = Tmp_Image_Down_Sampled(:);
TrainDatabasePath2 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );

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
TrainFiles = dir(TrainDatabasePath2);
Train_Number = 0;

for i = 1:size(TrainFiles,1)
    if not(strcmp(TrainFiles(i).name,'.')|strcmp(TrainFiles(i).name,'..')|strcmp(TrainFiles(i).name,'Thumbs.db'))
        Train_Number = Train_Number + 1; % Number of all images in the training database
    end
end
%--------------------------------------------------------------------------
%Training Data
[u v] = LTV(ImgTest, 0.2);
     

 k = mat2gray(v);
 
   kk = mat2gray(u);
   k = (k);
   kk = (kk);
   res = (0.0*kk)+(1*k);
Tmp_Image_Down_Sampled = (res);

 for i = 1:Train_Number
  
     if (countTrain<2)
        str = int2str(i);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath2,str);
    
   
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
     Tr_DAT = Image_Data_Matrix;
     Tt_DAT = Image_Data_MatrixTest;
    

%-------------------------------------------------------------------------
%projection matrix computing
Proj_M = (Tr_DAT'*Tr_DAT+kappa*eye(size(Tr_DAT,2)))\Tr_DAT';


%-------------------------------------------------------------------------

     ID = [];
     trls =  cell2mat(SubsetOneLabels);
%Collaborative function     
y =  Tt_DAT(:,1);
    [id]    = CRC_RLS(Tr_DAT,Proj_M, Tt_DAT(:,1),trls);
    ID      =   [ID id];
 

 matchedImage = id

figure,imshow(ImgTest),title('Testing Image');
 str = int2str(matchedImage*7);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath2,str);
	 Img = imread(str);   
     figure,imshow(Img),title('Matched Image');

     





function txtS2_Callback(hObject, eventdata, handles)
% hObject    handle to txtS2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtS2 as text
%        str2double(get(hObject,'String')) returns contents of txtS2 as a double


% --- Executes during object creation, after setting all properties.
function txtS2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtS2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TrainDatabasePath3 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
startingFolder = 'C:\Program Files\MATLAB';
if ~exist(startingFolder, 'dir')
	% If that folder doesn't exist, just start in the current folder.
	startingFolder = pwd;
end
% Get the name of the file that the user wants to use.
defaultFileName = fullfile(startingFolder, '*.*');
[baseFileName, folder] = uigetfile(defaultFileName, 'Select a file');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end
fullFileName = fullfile(folder, baseFileName);
myImage = imread(fullFileName);
ImgTest = myImage ;
Tmp_Image_Down_Sampled = double(ImgTest);

addpath 'C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset3'
SubsetOneLabels = cell(1,120);
targetLabel = 1;
countTrain = 1;
countImg = 1;
countInd = 1;
sumN = 6;
kappa             =   [0.001]; 
TrainFiles = dir(TrainDatabasePath3);
Train_Number = 0;
[u v] = LTV(ImgTest, 0.2);
     

 k = mat2gray(v);
 
   kk = mat2gray(u);
   k = (k);
   kk = (kk);
   res = (0.0*kk)+(1*k);
Tmp_Image_Down_Sampled = (res);
Image_Data_MatrixTest(:,1) = Tmp_Image_Down_Sampled(:);
for i = 1:size(TrainFiles,1)
    if not(strcmp(TrainFiles(i).name,'.')|strcmp(TrainFiles(i).name,'..')|strcmp(TrainFiles(i).name,'Thumbs.db'))
        Train_Number = Train_Number + 1; % Number of all images in the training database
    end
end
for i = 1:Train_Number
  
     if (countTrain<2)
       str = int2str(i);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath3,str);
    
   
    fprintf(1,'loading PGM file %s\n',str);
	 Img = imread(str) ;  
    [u v] = LTV(Img, 0.2);
     
%LTV function
 k = mat2gray(v);
 
   kk = mat2gray(u);
   k = (k);
   kk = (kk);
   res = (0.0*kk)+(1*k);
  
     Tmp_Image_Down_Sampled = (res);


        Image_Data_Matrix(:,countImg) = Tmp_Image_Down_Sampled(:);
 
      countImg = countImg+1;
     end
    if mod(i ,11) == 0
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
      Tr_DAT = Image_Data_Matrix;
     Tt_DAT = Image_Data_MatrixTest;
    

%-------------------------------------------------------------------------
%projection matrix computing
Proj_M = (Tr_DAT'*Tr_DAT+kappa*eye(size(Tr_DAT,2)))\Tr_DAT';


%-------------------------------------------------------------------------

     ID = [];
     trls =  cell2mat(SubsetOneLabels);
%Collaborative function     
y =  Tt_DAT(:,1);
    [id]    = CRC_RLS(Tr_DAT,Proj_M, Tt_DAT(:,1),trls);
    ID      =   [ID id];
 

 matchedImage = id

figure,imshow(ImgTest),title('Testing Image');
 str = int2str(matchedImage*11);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath3,str);
	 Img = imread(str);   
     figure,imshow(Img),title('Matched Image');
 
     
     







function txtS3_Callback(hObject, eventdata, handles)
% hObject    handle to txtS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtS3 as text
%        str2double(get(hObject,'String')) returns contents of txtS3 as a double


% --- Executes during object creation, after setting all properties.
function txtS3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TrainDatabasePath4 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
startingFolder = 'C:\Program Files\MATLAB';
if ~exist(startingFolder, 'dir')
	% If that folder doesn't exist, just start in the current folder.
	startingFolder = pwd;
end
% Get the name of the file that the user wants to use.
defaultFileName = fullfile(startingFolder, '*.*');
[baseFileName, folder] = uigetfile(defaultFileName, 'Select a file');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end
fullFileName = fullfile(folder, baseFileName);
myImage = imread(fullFileName);
ImgTest = myImage ;

addpath 'C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset4'
addpath('LTV');
addpath('LTV/PrMF-v2.32/');
addpath('l1magic-1.11/l1magic/Optimization/');


targetLabel = 1;
countTrain = 1;
countImg = 1;
countInd = 1;
sumN = 6;

kappa             =   [0.001]; 
TrainFiles = dir(TrainDatabasePath4);
Train_Number = 0;
[u v] = LTV(ImgTest, 0.2);
     

 k = mat2gray(v);
 
   kk = mat2gray(u);
   k = (k);
   kk = (kk);
   res = (0.0*kk)+(1*k);
Tmp_Image_Down_Sampled = (res);
Image_Data_MatrixTest(:,1) = Tmp_Image_Down_Sampled(:);
for i = 1:size(TrainFiles,1)
    if not(strcmp(TrainFiles(i).name,'.')|strcmp(TrainFiles(i).name,'..')|strcmp(TrainFiles(i).name,'Thumbs.db'))
        Train_Number = Train_Number + 1; % Number of all images in the training database
    end
end
%Training Data
 for i = 1:Train_Number
  
     if (countTrain<3)
            str = int2str(i);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath4,str);
    
   
    fprintf(1,'loading PGM file %s\n',str);
	 Img = imread(str) ;    
%LTV Function
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
    if mod(i ,15) == 0
     
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
     for i=1:40
             if mod(i ,2) == 0
        SubsetOneLabels{1,i} = (targetLabel); 
        targetLabel = targetLabel+1;
             else
         SubsetOneLabels{1,i} = (targetLabel); 
    end
     end
      Tr_DAT = Image_Data_Matrix;
     Tt_DAT = Image_Data_MatrixTest;
    

%-------------------------------------------------------------------------
%projection matrix computing
Proj_M = (Tr_DAT'*Tr_DAT+kappa*eye(size(Tr_DAT,2)))\Tr_DAT';


%-------------------------------------------------------------------------

     ID = [];
     trls =  cell2mat(SubsetOneLabels);
%Collaborative function     
y =  Tt_DAT(:,1);
    [id]    = CRC_RLS(Tr_DAT,Proj_M, Tt_DAT(:,1),trls);
    ID      =   [ID id];
 

 matchedImage = id

figure,imshow(ImgTest),title('Testing Image');
 str = int2str(matchedImage*15);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath4,str);
	 Img = imread(str);   
     figure,imshow(Img),title('Matched Image');

     







function txtS4_Callback(hObject, eventdata, handles)
% hObject    handle to txtS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtS4 as text
%        str2double(get(hObject,'String')) returns contents of txtS4 as a double


% --- Executes during object creation, after setting all properties.
function txtS4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

TrainDatabasePath5 = uigetdir('C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset1', 'Select training database path' );
startingFolder = 'C:\Program Files\MATLAB';
if ~exist(startingFolder, 'dir')
	% If that folder doesn't exist, just start in the current folder.
	startingFolder = pwd;
end
% Get the name of the file that the user wants to use.
defaultFileName = fullfile(startingFolder, '*.*');
[baseFileName, folder] = uigetfile(defaultFileName, 'Select a file');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end
fullFileName = fullfile(folder, baseFileName);
myImage = imread(fullFileName);
ImgTest = myImage ;

addpath 'C:\Users\Lenovo\Desktop\MMU\Epsilon Year\FYP\DataBase\Extended Yale Database\subset4'
addpath('LTV');
addpath('LTV/PrMF-v2.32/');
addpath('l1magic-1.11/l1magic/Optimization/');
SubsetOneLabels = cell(1,120);
targetLabel = 1;
countTrain = 1;
countImg = 1;
countInd = 1;
sumN = 6;

kappa             =   [0.001]; 
TrainFiles = dir(TrainDatabasePath5);
Train_Number = 0;
[u v] = LTV(ImgTest, 0.2);
     

 k = mat2gray(v);
 
   kk = mat2gray(u);
   k = (k);
   kk = (kk);
   res = (0.0*kk)+(1*k);
Tmp_Image_Down_Sampled = (res);
Image_Data_MatrixTest(:,1) = Tmp_Image_Down_Sampled(:);
for i = 1:size(TrainFiles,1)
    if not(strcmp(TrainFiles(i).name,'.')|strcmp(TrainFiles(i).name,'..')|strcmp(TrainFiles(i).name,'Thumbs.db'))
        Train_Number = Train_Number + 1; % Number of all images in the training database
    end
end
%Training Data
 for i = 1:Train_Number
  
     if (countTrain<2)
         str = int2str(i);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath5,str);
    
   
    fprintf(1,'loading PGM file %s\n',str);
	 Img = imread(str) ;
%LTV Function    
     [u v] = LTV(Img, 0.3);
     

 k = mat2gray(v);
 
   kk = mat2gray(u);
   k = (k);
   kk = (kk);
   res = (0.1*kk)+k;

  
     Tmp_Image_Down_Sampled = (res);
     
        Image_Data_Matrix(:,countImg) = Tmp_Image_Down_Sampled(:);
 
      countImg = countImg+1;
     end
    if mod(i ,11) == 0
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
 Tr_DAT = Image_Data_Matrix;
     Tt_DAT = Image_Data_MatrixTest;
    

%-------------------------------------------------------------------------
%projection matrix computing
Proj_M = (Tr_DAT'*Tr_DAT+kappa*eye(size(Tr_DAT,2)))\Tr_DAT';


%-------------------------------------------------------------------------

     ID = [];
     trls =  cell2mat(SubsetOneLabels);
%Collaborative function     
y =  Tt_DAT(:,1);
    [id]    = CRC_RLS(Tr_DAT,Proj_M, Tt_DAT(:,1),trls);
    ID      =   [ID id];
 

 matchedImage = id

figure,imshow(ImgTest),title('Testing Image');
 str = int2str(matchedImage*11);
    str = strcat('\',str,'.pgm');
    str = strcat(TrainDatabasePath5,str);
	 Img = imread(str);   
     figure,imshow(Img),title('Matched Image');




function txtS5_Callback(hObject, eventdata, handles)
% hObject    handle to txtS5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtS5 as text
%        str2double(get(hObject,'String')) returns contents of txtS5 as a double


% --- Executes during object creation, after setting all properties.
function txtS5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtS5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
