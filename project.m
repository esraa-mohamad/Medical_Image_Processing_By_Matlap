function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 27-Dec-2022 19:45:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1

    


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton5
global x
x=uigetfile('*.*');
x=imread(x);
axes(handles.axes3);
imshow(x);
% --- Executes on button press in togglebutton6.
function togglebutton6_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton6
global x
x=uigetfile('*.*');
x=dicomread(x);
axes(handles.axes3);
imshow(x,[]);

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton8.
function togglebutton8_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton8
global x
global y
format={'*.png';'*.jpg';'*.tif';'*.png';'*.*'};
[file path]=uiputfile(format,'Save As');
y=[path file];
imwrite(mat2gray(x),y,'png');
axes(handles.axes6);
imshow(y);
if file
    msgbox('Save in png, Done!');
    return
end





% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton24.
function togglebutton24_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton24
global x
cla(handles.axes4,x);


% --- Executes on button press in togglebutton7.
function togglebutton7_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton7
global x
global y
[W H L]=size(x);
y=zeros(W,H);
y=double(y);
for i=1:W
    for j=1:H
       
        y(i,j)=x(i,j,1)*0.4+x(i,j,2)*0.2+x(i,j,3)*0.4;
        if(y(i,j)<=150)
           y(i,j)=0;
       else 
             y(i,j)=1;
       end  
    end
end 
axes(handles.axes6);
imshow(y);

% --- Executes on button press in togglebutton25.
function togglebutton25_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton25
global x
global y
val = str2num(get(handles.edit8,'string'));
[W H L]=size(x);
y=zeros(W,H);
y=double(y);
for i=1:W
    for j=1:H
        if(val==1)
        y(i,j)=x(i,j,1)*0.4+x(i,j,2)*0.2+x(i,j,3)*0.4;
        end
        if(val==2)
        y(i,j)=(x(i,j,1)+x(i,j,2)+x(i,j,3))/3;
        end
        if(val==3)
        y(i,j)=x(i,j,1);
        end
    end
end 
y=uint8(y);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton26.
function togglebutton26_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton26
global x
global y
val = str2num(get(handles.edit8,'string'));
[W H]=size(x);
y=zeros(W,H);
y=double(y);
for i=1:W
    for j=1:H
       if(x(i,j)<=val)
           y(i,j)=0;
       else 
             y(i,j)=1;
       end  
    end
end 
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton27.
function togglebutton27_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton27
global x 
global y 
val = str2num(get(handles.edit1,'string'));
[W H L]=size (x);
for i=1 :W
    for j=1 :H
    if(L==3)
         y(i,j,1)=x(i,j,1)+val;
         y(i,j,2)=x(i,j,2)+val;
         y(i,j,3)=x(i,j,3)+val;
    else
         y(i,j)=x(i,j)+val;
    end
    end
end
y = uint8(y);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton28.
function togglebutton28_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton28
global x 
global y 
val = str2num(get(handles.edit1,'string'));
[W H L]=size (x);
for i=1 :W
    for j=1 :H
        if(L==3)
         y(i,j,1)=x(i,j,1)-val;
         y(i,j,2)=x(i,j,2)-val;
         y(i,j,3)=x(i,j,3)-val;
    else
         y(i,j)=x(i,j)-val;
        end
    
    end
end 
y = uint8(y);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton29.
function togglebutton29_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton29
global x 
global y 
val = str2num(get(handles.edit1,'string'));
[W H L]=size (x);
for i=1 :W
    for j=1 :H
       if(L==3)
         y(i,j,1)=x(i,j,1)*val;
         y(i,j,2)=x(i,j,2)*val;
         y(i,j,3)=x(i,j,3)*val;
    else
         y(i,j)=x(i,j)*val;
        end
    end
end 
y = uint8(y);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton9.
function togglebutton9_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton9
global x 
global y 
val = str2num(get(handles.edit1,'string'));
[W H L]=size (x);
for i=1 :W
    for j=1 :H
           if(L==3)
         y(i,j,1)=x(i,j,1)/val;
         y(i,j,2)=x(i,j,2)/val;
         y(i,j,3)=x(i,j,3)/val;
    else
         y(i,j)=x(i,j)/val;
        end
    end
end 
y = uint8(y);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton11.
function togglebutton11_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton11
global x 
global y 
val2= str2num(get(handles.edit2,'string'));
[W H L]=size(x);
x=im2double(x);
y=zeros(W,H);
y=double(y);
for i=1:W
    for j=1:H
          if(L==3)
         y(i,j,1)=x(i,j,1)^val2;
         y(i,j,2)=x(i,j,2)^val2;
         y(i,j,3)=x(i,j,3)^val2;
    else
         y(i,j)=x(i,j)^val2;
        end
    end
end
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton12.
function togglebutton12_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton12
global x 
global y 
[W H L]=size(x);
x=im2double(x);
y=zeros(W,H);
y=double(y);
for i=1:W
    for j=1:H
        if(L==3)
            y(i,j,1)=log(x(i,j,1)+1);
            y(i,j,2)=log(x(i,j,2)+1);
            y(i,j,3)=log(x(i,j,3)+1);
        else
            y(i,j)=log(x(i,j)+1);
        end
    end
end
%y=uint8(y);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton14.
function togglebutton14_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton14
global x 
global y 
[W H L]=size(x);
y=zeros(W,H);
y=double(y);
for i=1:W
    for j=1:H
        if(L==3)
        y(i,j,1)=255-x(i,j,1);
        y(i,j,2)=255-x(i,j,2);
        y(i,j,3)=255-x(i,j,3);
        else
            y(i,j)=255-x(i,j);
        end
    end
end
y=uint8(y);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton13.
function togglebutton13_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton13
global x 
global y 
val2= str2num(get(handles.edit2,'string'));
[W H L]=size(x);
x=im2double(x);
y=zeros(W,H);
y=double(y);
for i=1:W
    for j=1:H
        if(L==3)
             y(i,j,1)= exp(x(i,j,1)^val2)-1;
              y(i,j,2)= exp(x(i,j,2)^val2)-1;
               y(i,j,3)= exp(x(i,j,3)^val2)-1;
        else
             y(i,j)= exp(x(i,j)^val2)-1;
        end
    end
end
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton18.
function togglebutton18_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton18
global x 
global y 
newMin=str2num(get(handles.edit3,'string'));
newMax=str2num(get(handles.edit4,'string')); 
[W H L]=size(x);
omin=min(min(x));
omax=max(max(x));
omin2=min (min(min(x)));
omax2=max(max(max(x)));
for i=1:W
    for j=1:H
         if ( L==3)
              y(i,j,1)=((x(i,j,1)-omin2)/(omax2-omin2))*(newMax-newMin)+newMin;
              y(i,j,2)=((x(i,j,2)-omin2)/(omax2-omin2))*(newMax-newMin)+newMin;
              y(i,j,3)=((x(i,j,3)-omin2)/(omax2-omin2))*(newMax-newMin)+newMin;
         else 
               y(i,j)=((x(i,j)-omin)/(omax-omin))*(newMax-newMin)+newMin;
         end
    end
end
y=uint8(y);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton16.
function togglebutton16_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton16
global x 
histo =zeros(256,1);
[H W L ]= size (x);
for i =1:H
    for j=1:W
        if(L==3)
        histo(x(i,j,1)+1)=histo(x(i,j,1)+1)+1;
         histo(x(i,j,2)+1)=histo(x(i,j,2)+1)+1;
          histo(x(i,j,3)+1)=histo(x(i,j,3)+1)+1;
        else
             histo(x(i,j)+1)=histo(x(i,j)+1)+1;
        end
    end
end
axes(handles.axes6);
bar(histo);
% --- Executes on button press in togglebutton17.
function togglebutton17_Callback(hObject, ~, handles)
% hObject    handle to togglebutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton17
global x
global b
global c
[h,w,l] = size(x);
if l > 1
    array_freq_red = zeros(256,1);
    array_freq_green = zeros(256,1);
    array_freq_blue = zeros(256,1);
    
    c = zeros(h,w,l);

    for i = 1 : h       
        for j = 1 : w
            array_freq_red(x(i,j,1)+1) = array_freq_red(x(i,j,1)+1)+1;
            array_freq_green(x(i,j,2)+1) = array_freq_green(x(i,j,2)+1)+1;
            array_freq_blue(x(i,j,3)+1) = array_freq_blue(x(i,j,3)+1)+1;
        end
    end



    for k = 1 : l
        for i = 1 : h        
            for j = 1 : w
                if k ==1
                    sum = 0;
                    index = x(i,j,1)+1;
                    for stop = 1 : index
                          sum = sum + array_freq_red(stop);    
                    end
                    cumulative = sum / (h*w);
                    value_round = round(255*cumulative);
                    c(i,j,1) = value_round;
                elseif k == 2
                    sum = 0;
                    index = x(i,j,2)+1;
                    for stop = 1 : index
                          sum = sum + array_freq_red(stop);    
                    end
                    cumulative = sum / (h*w);
                    value_round = round(255*cumulative);
                    c(i,j,2) = value_round;
                else
                    sum = 0;
                    index = x(i,j,3)+1;
                    for stop = 1 : index
                          sum = sum + array_freq_red(stop);    
                    end
                    cumulative = sum / (h*w);
                    value_round = round(255*cumulative);
                    c(i,j,3) = value_round;
                end
            end
        end
    end

    b = uint8(c);
else
    array_freq = zeros(256,1);
    c = zeros(h,w);

    for i = 1 : h        
        for j = 1 : w
            array_freq(x(i,j)+1) = array_freq(x(i,j)+1)+1;
        end
    end

    for i = 1 : h        
        for j = 1 : w
            sum = 0;
            index = x(i,j)+1;
            for stop = 1 : index
                sum = sum + array_freq(stop);    
            end
            cumulative = sum / (h*w);
            value_round = round(255*cumulative);
            c(i,j) = value_round;
        end
    end

    b = uint8(c);
    
end
axes(handles.axes6);
imshow(b);


% --- Executes on button press in togglebutton21.
function togglebutton21_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x 
global y 
val = str2num(get(handles.edit7,'string'));
%y=double(y);
mask = ones(val,val) / (val*val);
y=imfilter(x,mask);
axes(handles.axes6);
imshow(y);
% Hint: get(hObject,'Value') returns toggle state of togglebutton21



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


% --- Executes on button press in togglebutton22.
function togglebutton22_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton22
global x
global y 
val = get(handles.edit7,'string');
if(val=='P')
mask=[0 -1 0;-1 5 -1; 0 -1 0];
end
if(val=='H')
mask=[0 1 0; 0 1 0; 0 -1 0];
end
if(val=='V')
mask=[0 0 0;1 1 -1 ; 0 0 0];
end
if(val=='L')
mask=[0 0 1 ; 0 1 0;-1 0 0 ];
end
if(val=='R')
mask=[1 0 0;0 1 0; 0 0 -1];
end
y=imfilter(x,mask);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton23.
function togglebutton23_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton23
global x
global y 
val = get(handles.edit7,'string');
if(val=='P')
mask=[-1 -1 -1;-1 8 -1;-1 -1 -1];
end
if(val=='H')
mask=[-1 -2 -1; 0 0 0; 1 2 1 ];
end
if(val=='V')
mask=[-1 0 1;-2 0 2; -1 0 1];
end
if(val=='L')
mask=[0 -1 -2; 1 0 -1; 2 1 0];
end
if(val=='R')
mask=[-2 -1 0; -1 0 1; 0 1 2 ];
end
y=imfilter(x,mask);
axes(handles.axes6);
imshow(y);


% --- Executes on button press in togglebutton31.
function togglebutton31_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton31
global y
y=getappdata(0,'y');
imshow(y);

% --- Executes on button press in togglebutton32.
function togglebutton32_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton32
msgbox('Thanks for using our image processing tool!')
pause(1);
close();
close();


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


imshow('images_02.jpg');
% --- Executes during object creation, after setting all properties.
function axes8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes8



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton33.
function togglebutton33_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton33
global x 
global y 
mask = [1 1 1 ; 1 2 1 ; 1 1 1];
y=imfilter(x,mask);
axes(handles.axes6);
imshow(y);
