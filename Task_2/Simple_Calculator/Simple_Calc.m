function varargout = Simple_Calc(varargin)
% SIMPLE_CALC MATLAB code for Simple_Calc.fig
%      SIMPLE_CALC, by itself, creates a new SIMPLE_CALC or raises the existing
%      singleton*.
%
%      H = SIMPLE_CALC returns the handle to a new SIMPLE_CALC or the handle to
%      the existing singleton*.
%
%      SIMPLE_CALC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLE_CALC.M with the given input arguments.
%
%      SIMPLE_CALC('Property','Value',...) creates a new SIMPLE_CALC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Simple_Calc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Simple_Calc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Simple_Calc

% Last Modified by GUIDE v2.5 23-Jan-2022 00:00:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Simple_Calc_OpeningFcn, ...
                   'gui_OutputFcn',  @Simple_Calc_OutputFcn, ...
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


% --- Executes just before Simple_Calc is made visible.
function Simple_Calc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no Simple_Result args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Simple_Calc (see VARARGIN)

% Choose default command line Simple_Result for Simple_Calc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.Error_Console,'String','');


% UIWAIT makes Simple_Calc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Simple_Calc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning Simple_Result args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line Simple_Result from handles structure
varargout{1} = handles.output;



function Parameter1_Callback(hObject, eventdata, handles)
% hObject    handle to Parameter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Parameter1 as text
%        str2double(get(hObject,'String')) returns contents of Parameter1 as a double


% --- Executes during object creation, after setting all properties.
function Parameter1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Parameter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Operator_Callback(hObject, eventdata, handles)
% hObject    handle to Operator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Operator as text
%        str2double(get(hObject,'String')) returns contents of Operator as a double


% --- Executes during object creation, after setting all properties.
function Operator_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Operator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Parameter2_Callback(hObject, eventdata, handles)
% hObject    handle to Parameter2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Parameter2 as text
%        str2double(get(hObject,'String')) returns contents of Parameter2 as a double


% --- Executes during object creation, after setting all properties.
function Parameter2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Parameter2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Simple_Result_Callback(hObject, eventdata, handles)
% hObject    handle to Simple_Result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Simple_Result as text
%        str2double(get(hObject,'String')) returns contents of Simple_Result as a double


% --- Executes during object creation, after setting all properties.
function Simple_Result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Simple_Result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
cont = cellstr(get(hObject,'String'));
set(handles.Operator , 'String' , cont{get(hObject,'Value')});


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
param1= get(handles.Parameter1,'String');
param2= get(handles.Parameter2,'String');
flag = uint8(0);
set(handles.Error_Console,'String','');
set(handles.Simple_Result , 'String' , '');

if param1 == "" 
    
    set(handles.Error_Console,'String','First Parameter is Empty');
elseif param2 == ""
    set(handles.Error_Console,'String','Second Parameter is Empty');
    
else
    for i = isletter(param1)
        if(i == 1)
            flag = 1;
            set(handles.Error_Console,'String','First Parameter Has Character');
            break;
        end
end

if(flag == 0)
    for i = isletter(param2)
        if(i == 1)
            flag = 1;
            set(handles.Error_Console,'String','Second Parameter Has Character');
            break;
        end
    end
end

if flag == 0
    oper = get(handles.Operator , 'String');
    try
    Equ = strcat(param1,oper,param2);
    set(handles.Simple_Result , 'String' , string(str2sym(Equ)));
    catch
        set(handles.Error_Console,'String','Invaild Input');
    end
end
        
end



function Error_Console_Callback(hObject, eventdata, handles)
% hObject    handle to Error_Console (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Error_Console as text
%        str2double(get(hObject,'String')) returns contents of Error_Console as a double


% --- Executes during object creation, after setting all properties.
function Error_Console_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Error_Console (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
