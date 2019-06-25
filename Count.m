function varargout = Count(varargin)
% COUNT MATLAB code for Count.fig
%      COUNT, by itself, creates a new COUNT or raises the existing
%      singleton*.
%
%      H = COUNT returns the handle to a new COUNT or the handle to
%      the existing singleton*.
%
%      COUNT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COUNT.M with the given input arguments.
%
%      COUNT('Property','Value',...) creates a new COUNT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Count_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Count_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Count

% Last Modified by GUIDE v2.5 08-Sep-2017 01:53:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Count_OpeningFcn, ...
                   'gui_OutputFcn',  @Count_OutputFcn, ...
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


% --- Executes just before Count is made visible.
function Count_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Count (see VARARGIN)

% Choose default command line output for Count
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Count wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Count_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in c2002.
function c2002_Callback(hObject, eventdata, handles)
%img02=imread('2002-7.jpg');
%plot(handles.axes1,img02);
% hObject    handle to c2002 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2002-7.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 < 70;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 25);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-200000;
disp(size(nWhite));
x = nWhite/1600;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2002');
disp(x);



% --- Executes on button press in c2005.
function c2005_Callback(hObject, eventdata, handles)
% hObject    handle to c2005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




%% Read Images
img1 = imread('2005-1.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(img1);
imgThresh = imgr1 < 60;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 100);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-200000;
disp(size(nWhite));
x = nWhite/1600;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2005');


% --- Executes on button press in c2007.
function c2007_Callback(hObject, eventdata, handles)
% hObject    handle to c2007 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2007-2.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 < 62;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 50);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-200000;
disp(size(nWhite));
x = nWhite/1600;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2007');

% --- Executes on button press in c2008.
function c2008_Callback(hObject, eventdata, handles)
% hObject    handle to c2008 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2008-9.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 < 70;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 50);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-200000;

x = nWhite/1600;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2008');

% --- Executes on button press in c2010.
function c2010_Callback(hObject, eventdata, handles)
% hObject    handle to c2010 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2010.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 < 60;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 55);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-200000;
disp(size(nWhite));
x = nWhite/1600;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2010');

% --- Executes on button press in c2011.
function c2011_Callback(hObject, eventdata, handles)
% hObject    handle to c2011 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2013.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 < 55;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 30);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-68886;
disp(size(nWhite));
x = nWhite/144;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2011');

% --- Executes on button press in c2012.
function c2012_Callback(hObject, eventdata, handles)
% hObject    handle to c2012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2012.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 < 30;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 40);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-68886;
disp(size(nWhite));
x = nWhite/144;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2012');

% --- Executes on button press in c2014.
function c2014_Callback(hObject, eventdata, handles)
% hObject    handle to c2014 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2014.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 < 67
imtool(img1);
imgFilled = bwareaopen(imgThresh , 40);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-68886;
disp(size(nWhite));
x = nWhite/144;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2014');

% --- Executes on button press in c2015.
function c2015_Callback(hObject, eventdata, handles)
% hObject    handle to c2015 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2015.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 <57;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 33);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-68886;
disp(size(nWhite));
x = nWhite/144;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2015');

% --- Executes on button press in c2016.
function c2016_Callback(hObject, eventdata, handles)
% hObject    handle to c2016 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2016.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(img1);
imgThresh = imgr1 < 60;
%imtool(img1);
imgFilled = bwareaopen(imgThresh , 60);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-68886;
disp(size(nWhite));
x = nWhite/144;
%imtool(img1);
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2016');

% --- Executes on button press in c2017.
function c2017_Callback(hObject, eventdata, handles)
% hObject    handle to c2017 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read Images
img1 = imread('2017.jpg');
%% Display Grayscale Images
img1BW = rgb2gray(img1);
imgr1 = img1(:,:,3);
%imtool(imgr1);
imgThresh = imgr1 < 40;
imtool(img1);
imgFilled = bwareaopen(imgThresh , 33);
%imtool(imgFilled);
nWhite = nnz(imgFilled)-68886;
disp(size(nWhite));
x = nWhite/144;
axes(handles.axes1);
imshow(img1);
axes(handles.axes2);
imshow(imgFilled);
set(handles.trees,'string',round(x));
set(handles.yr,'string','2017');


function trees_Callback(hObject, eventdata, handles)
% hObject    handle to trees (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of trees as text
%        str2double(get(hObject,'String')) returns contents of trees as a double


% --- Executes during object creation, after setting all properties.
function trees_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trees (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yr_Callback(hObject, eventdata, handles)
% hObject    handle to yr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yr as text
%        str2double(get(hObject,'String')) returns contents of yr as a double


% --- Executes during object creation, after setting all properties.
function yr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in grph.
function grph_Callback(hObject, eventdata, handles)
% hObject    handle to grph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
x=[2002 2005 2007 2008 2010 2011 2012 2014 2015 2016 2017];
y=[1481 691 568 1380 524 1700 732 762 693 520 627];
plot(x,y,'b-o');
xlabel('Years')
ylabel('No of trees')

% --- Executes on button press in pie.
function pie_Callback(hObject, eventdata, handles)
figure
f=[1481 691 568 1380 524 1700 732 762 693 520 627];
h=pie(f);
htext=findobj(h,'Type','text');
perval=get(htext,'String');
str={'2002-';'2005-';'2007-';'2008-';'2010-';'2011-';'2012-';'2014-';'2015-';'2016-';'2017-'};
strcat(str,perval);
oldExtents_cell=get(htext,'Extent');
oldExtents=cell2mat(oldExtents_cell);
comb=strcat(str,perval);
set(htext,{'String'},comb);
% hObject    handle to pie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
