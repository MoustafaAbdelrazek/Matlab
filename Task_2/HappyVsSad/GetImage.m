function varargout = GetImage(varargin)
% GETIMAGE MATLAB code for GetImage.fig
%      GETIMAGE, by itself, creates a new GETIMAGE or raises the existing
%      singleton*.
%
%      H = GETIMAGE returns the handle to a new GETIMAGE or the handle to
%      the existing singleton*.
%
%      GETIMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GETIMAGE.M with the given input arguments.
%
%      GETIMAGE('Property','Value',...) creates a new GETIMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GetImage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GetImage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GetImage

% Last Modified by GUIDE v2.5 31-Dec-2021 22:59:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GetImage_OpeningFcn, ...
                   'gui_OutputFcn',  @GetImage_OutputFcn, ...
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


% --- Executes just before GetImage is made visible.
function GetImage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GetImage (see VARARGIN)
global myImage1
myImage1 = imread('Happy.jpg');
global myImage2
myImage2 = imread('sad.png');
global resizePos
global Value
Value = 0; 
% Choose default command line output for GetImage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GetImage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GetImage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global Value 
Value =str2double(get(handles.edit1, 'String'));
global myImage1
global myImage2
set(handles.axes1,'Units','pixels');
global resizePos
resizePos = get(handles.axes1,'Position');
if Value >=60 && Value < 101   
    myImage1= imresize(myImage1, [resizePos(3) resizePos(3)]);
    axes(handles.axes1);
    imshow(myImage1);
    set(handles.axes1,'Units','normalized');
elseif Value >=0 && Value <60
    myImage2= imresize(myImage2, [resizePos(3) resizePos(3)]);
    axes(handles.axes1);
    imshow(myImage2);
    set(handles.axes1,'Units','normalized');
else
end
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
