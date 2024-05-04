%% SatNav U2
clear all;
close all;
clc;
%% Aufgabe 1
load A1;
rA1 = find(A1(:,15)<3);%ratio 越低越差
% A low ratio usually means that integer fixing may not have been successful
pA1 = length(rA1)/length(A1);

%% Aufgabe 2
%ALLE FREQUENCY VON GPS Galileo L1 L2 E5b
load A2GPSGALILEOL1L2E5b;
rA2GPSGALILEOL1L2E5b = find(A2GPSGALILEOL1L2E5b(:,15)<3);
pA2GPSGALILEOL1L2E5b = length(rA2GPSGALILEOL1L2E5b)/length(A2GPSGALILEOL1L2E5b);

%ALLE SATELIITE
load A2ALLSATE;
rA2ALLSATE = find(A2ALLSATE(:,15)<3);
pA2ALLSATE = length(rA2ALLSATE)/length(A2ALLSATE);

%GPS L1 L2 L5
load A2GPSALL;
rA2GPSALL = find(A2GPSALL(:,15)<3);
pA2GPSGALILEO = length(rA2GPSALL)/length(A2GPSALL);

%COMBINATED
load A2COMBI;
rA2COMBI = find(A2COMBI(:,15)<3);
pA2COMBI = length(rA2COMBI)/length(A2COMBI);

%ELEVATION 10
load A2ELE10;
rA2ELE10 = find(A2ELE10(:,15)<3);
pA2ELE10 = length(rA2ELE10)/length(A2ELE10);

%Backwards
load A2BACKWARDS;
rA2BACKWARDS = find(A2BACKWARDS(:,15)<3);
pA2BACKWARDS = length(rA2BACKWARDS)/length(A2BACKWARDS);

%NO G04 G18

load A2NOG04G18
rA2NOG04G18 = find(A2NOG04G18(:,15)<3);
pA2NOG04G18 = length(rA2NOG04G18)/length(A2NOG04G18);

ErgebnisseA2 = [pA1,pA2GPSGALILEOL1L2E5b,pA2ALLSATE,pA2GPSGALILEO,pA2COMBI,pA2ELE10,pA2BACKWARDS,pA2NOG04G18];
figure;
plot(1:1:8, ErgebnisseA2, 'o'); 
grid on;
xlabel('unterschiedliche Parameter'); % X轴标签
ylabel('Proportion of Solutions < 3'); % Y轴标签
title('Results Comparison for Different GNSS Settings'); % 图表标题


%% Aufgabe 3

%Radio = 2.8
load A3_2_8;
rA3_2_8 = find(A3_2_8(:,15)<3);
pA3_2_8 = length(rA3_2_8)/length(A3_2_8);

%Radio = 2.6
load A3_2_6;
rA3_2_6 = find(A3_2_6(:,15)<3);
pA3_2_6 = length(rA3_2_6)/length(A3_2_6);

%Radio = 2.4
load A3_2_4;
rA3_2_4 = find(A3_2_4(:,15)<3);
pA3_2_4 = length(rA3_2_4)/length(A3_2_4);

%Radio = 2.2
load A3_2_2;
rA3_2_2 = find(A3_2_2(:,15)<3);
pA3_2_2 = length(rA3_2_2)/length(A3_2_2);

%Radio = 2.0
load A3_2_0;
rA3_2_0 = find(A3_2_0(:,15)<3);
pA3_2_0 = length(rA3_2_0)/length(A3_2_0);


ErgebnisseA3 = [pA1,pA3_2_8,pA3_2_6,pA3_2_4,pA3_2_2,pA3_2_2];
figure
plot(1:1:6,ErgebnisseA3,'o-')
