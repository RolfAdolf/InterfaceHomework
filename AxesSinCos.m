function varargout = AxesSinCos(varargin)
% AXESSINCOS MATLAB code for AxesSinCos.fig
%      AXESSINCOS, by itself, creates a new AXESSINCOS or raises the existing
%      singleton*.
%
%      H = AXESSINCOS returns the handle to a new AXESSINCOS or the handle to
%      the existing singleton*.
%
%      AXESSINCOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AXESSINCOS.M with the given input arguments.
%
%      AXESSINCOS('Property','Value',...) creates a new AXESSINCOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AxesSinCos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AxesSinCos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AxesSinCos

% Last Modified by GUIDE v2.5 30-May-2020 23:44:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AxesSinCos_OpeningFcn, ...
                   'gui_OutputFcn',  @AxesSinCos_OutputFcn, ...
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


% --- Executes just before AxesSinCos is made visible.
function AxesSinCos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AxesSinCos (see VARARGIN)

% Choose default command line output for AxesSinCos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
hold on;
grid on;
global P1;
global P2;

% UIWAIT makes AxesSinCos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AxesSinCos_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
global P1;
x = linspace(0, 4*pi, 123);
if(get(handles.checkbox1, 'Value') > 0)
    P1 = plot(x, sin(x));
else
    delete(P1);
end
% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
global P2;
x = linspace(0, 4*pi, 123);
if(get(handles.checkbox2, 'Value') > 0)
    P2 = plot(x, cos(x));
else
    delete(P2);
end
