%%
clearvars; clc; close all;

%% 
% global fileID_Main
% fileID_Main = fopen('HFort_Matlab_Main_Log.txt','w');

%%

% distcomp.feature('LocalUseMpiexec',false);parpool('local',28); % max 28 available


%% Making Workspace Steady State 
MakeSteadyStateWorkspace


%% Plotting Figures
% Steady State

figname='new_LongTermInf';

% fprintf(fileID_Main,'Plotting Steady State Figures\n');
PlotSteadyStateFigures


% fclose(fileID_Main);
% quit





 