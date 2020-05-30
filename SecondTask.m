function varargout = SecondTask(varargin)
% SECONDTASK MATLAB code for SecondTask.fig
%      SECONDTASK, by itself, creates a new SECONDTASK or raises the existing
%      singleton*.
%
%      H = SECONDTASK returns the handle to a new SECONDTASK or the handle to
%      the existing singleton*.
%
%      SECONDTASK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SECONDTASK.M with the given input arguments.
%
%      SECONDTASK('Property','Value',...) creates a new SECONDTASK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SecondTask_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SecondTask_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SecondTask

% Last Modified by GUIDE v2.5 31-May-2020 00:34:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SecondTask_OpeningFcn, ...
                   'gui_OutputFcn',  @SecondTask_OutputFcn, ...
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


% --- Executes just before SecondTask is made visible.
function SecondTask_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SecondTask (see VARARGIN)

% Choose default command line output for SecondTask
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SecondTask wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SecondTask_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
axes(handles.axes1);
x = [-2:0.2:2];
plot(x, exp(-x.^2));


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
axes(handles.axes1);
cla;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
axes(handles.axes2);
x = [0:0.1:2*pi];
plot(x, sin(x));


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
axes(handles.axes2);
cla;


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
