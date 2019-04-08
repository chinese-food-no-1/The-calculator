function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 25-Mar-2019 04:17:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
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


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)

% Choose default command line output for calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        if(isBin(textString))
            e = bin2dec(textString);   
            set(handles.edit1,'String',num2str(e,10));
        else 
            set(handles.edit1,'String','FORMAT ERROR');
        end
    end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        e = dec2bin(str2num(textString));   
        set(handles.edit1,'String',num2str(e,10));
    end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'sin(');
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'cos(');
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'tan(');
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'pi');
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        if(strcmp(textString,'0')==1)
            set(handles.edit1,'String','error') ;
        else
            a = strread(textString, '%f');
            a=log10(a);
            set(handles.edit1,'String',num2str(a,10))
        end
    end

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
    set(handles.edit1,'String','')


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'asin(');
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'acos(');
    set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'atan(');
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,' (');
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,')');
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
    close(gcf);



% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        if(strcmp(textString,'0')==1)
           set(handles.edit1,'String','0') ;
        else
            w=length(textString)
            t=char(textString)
            str=t(1)
            if(strcmp(str,'-')==1 || strcmp(str,'*')==1 || strcmp(str,'/')==1)
                set(handles.edit1,'String','FORMAT ERROR');
            else
            a = strread(textString, '%f');
            a=sqrt(a);
            set(handles.edit1,'String',num2str(a,10))
            end
        end
    end
% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        w=length(textString)
        t=char(textString)
        str=t(w)
        if(strcmp(str,'+')==1 || strcmp(str,'-')==1 || strcmp(str,'*')==1 || strcmp(str,'/')==1)
            set(handles.edit1,'String','FORMAT ERROR');
        else
            textString=strcat(textString,'^')
            set(handles.edit1,'String',textString)
        end
    end

% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        w=length(textString)
        t=char(textString)
        str=t(w)
        if(strcmp(str,'+')==1 || strcmp(str,'-')==1 || strcmp(str,'*')==1 || strcmp(str,'/')==1)
            set(handles.edit1,'String','FORMAT ERROR');
        else
            textString=strcat(textString,'/')
            set(handles.edit1,'String',textString)
        end
    end

% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        w=length(textString)
        t=char(textString)
        str=t(w)
        if(strcmp(str,'+')==1 || strcmp(str,'-')==1 || strcmp(str,'*')==1 || strcmp(str,'/')==1)
            set(handles.edit1,'String','FORMAT ERROR');
        else
            e = factorial(str2num(textString));   
            set(handles.edit1,'String',num2str(e,10));
        end
    end

% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        w=length(textString)
        t=char(textString)
        str=t(w)
        if(strcmp(str,'+')==1 || strcmp(str,'-')==1 || strcmp(str,'*')==1 || strcmp(str,'/')==1)
            set(handles.edit1,'String','FORMAT ERROR');
        else
            textString=strcat(textString,'*')
            set(handles.edit1,'String',textString)
        end
    end
% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'7')
    set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'8')
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'9')
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')  
    if(isempty(textString))
        textString=strcat(textString,'-')
        set(handles.edit1,'String',textString)
    else
        w=length(textString)
        t=char(textString)
        str=t(w)
        if(strcmp(str,'+')==1 || strcmp(str,'-')==1 || strcmp(str,'*')==1 || strcmp(str,'/')==1)
            set(handles.edit1,'String','FORMAT ERROR');
        else
            textString=strcat(textString,'-')
            set(handles.edit1,'String',textString)
        end
    end

% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    if(isempty(textString))
        textString=strcat(textString,'+')
        set(handles.edit1,'String',textString)
    else
        w=length(textString)
        t=char(textString)
        str=t(w)
        if(strcmp(str,'+')==1 || strcmp(str,'-')==1 || strcmp(str,'*')==1 || strcmp(str,'/')==1)
            set(handles.edit1,'String','FORMAT ERROR');
        else
            textString=strcat(textString,'+')
            set(handles.edit1,'String',textString)
        end
    end

% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'4')
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'5')
    set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'6')
    set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'1')
    set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'2')
    set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'3')
    set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    w=length(textString)
    t=char(textString)
    textString=t(1:w-1)
    set(handles.edit1,'String',textString)



% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'0')
    set(handles.edit1,'String',textString)


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    textString=strcat(textString,'.')
    set(handles.edit1,'String',textString)

% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String')
    if(isempty(textString))
        set(handles.edit1,'String','INPUT ERROR');
    else
        s=eval(textString)
        set(handles.edit1,'String',num2str(s,10))
    end


% --- Executes during object creation, after setting all properties.

function figure1_CreateFcn(hObject, eventdata, handles)
ha=axes('units','normalized','pos',[0 0 1 1]);
uistack(ha,'down');
ii=imread('background.jpg');
image(ii);
colormap gray
set(ha,'handlevisibility','off','visible','on');
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
