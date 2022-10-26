%%
clearvars; clc; close all;

%% 
global fileID_Main
fileID_Main = fopen('HFort_Matlab_Main_Log.txt','w');

%%

% distcomp.feature('LocalUseMpiexec',false);parpool('local',28); % max 28 available


%% Making Workspace Steady State 
MakeSteadyStateWorkspace


%% Making Transition Dynamics Workspaces

MakeTransitionWorkspaces

%% Plotting Figures
% Steady State

figname='BothHyak';

fprintf('Plotting Steady State Figures\n');
PlotSteadyStateFigures
%%
% Transition
fprintf('Plotting Transition Figures\n');
close all
PlotTransitionFigures

%% Making Tables
close all
TransTableOutDir=strcat(cd,'/TransitionFigures/Tables7_And_8/');
mkdir(TransTableOutDir);

transtable_fname='Table7_and_8_col_1_BothHyak';

Decomposition
table7final = finaltable; 
clear finaltable

%%
load('compare_Table7Row1.mat')

T7Dif.Rb = table7final(1)-finaltable(1);
T7Dif.Eout = table7final(2)-finaltable(2);
T7Dif.EI = table7final(3)-finaltable(3);
T7Dif.Econ = table7final(4)-finaltable(4);
T7Dif.PEcon = table7final(5)-finaltable(5);
T7Dif.Cdir = table7final(6)-finaltable(6);
T7Dif.Cindw = table7final(7)-finaltable(7);
T7Dif.CindT = table7final(8)-finaltable(8);
T7Dif.CindRbAndq = table7final(9)-finaltable(9);

reqd_data=table(T7Dif.Rb,T7Dif.Eout,T7Dif.EI,T7Dif.Econ,...
    T7Dif.PEcon,T7Dif.Cdir,T7Dif.Cindw,T7Dif.CindT,T7Dif.CindRbAndq);
 
reqd_data.Properties.VariableNames=...
    {'Rb','Elast Y','Elast I','Elast C',...
    'Part Elast C','Dir Effect','Ind Wage','Ind Trans',...
    'Ind Ill Ret and Share Price'};
 
writetable(reqd_data,'Table7_Differences.xlsx');   


%%

fclose(fileID_Main);
quit





 