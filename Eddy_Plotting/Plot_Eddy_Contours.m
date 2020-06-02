%% Plotting Eddies in the GoM

% This script will plot all of the eddies on a single day in a given year,
% either or both cyclonic and anticyclonic

%% Choose what year and load in the map data and the day of the year calendar
cd '/Volumes/SeascapeLab/Limer/FGB-eddies/Eddy_Plotting/' % Replace with your file path
load 'Calendar.mat' % calendar with leap year version
load 'GoM_Map.mat' % data file differentiating between land and ocaen as a backdrop for the eddy contours
load 'GoM_Domain.mat' % lat and lon data

%% Load in the Lat/Lon contours of every GoM eddy from that year
cd '/Volumes/SeascapeLab/Limer/FGB-eddies/Eddy_Days/Eddy_Perimeters/Eddy_Perimeter_Data_2018/Perimeters_2018'; % Path to Eddy Perimeters with desired year
load 'anticyclonic.mat';
load 'cyclonic.mat';

day = 312; % Set what day to display sea surface height data for the GoM map use the Calendar.mat file for assistance

% Plot the GoM map 
figure
[X,Y] = meshgrid(lon,lat);
imagesc(lon,lat,data)
set(gca,'YDir','normal')
hold on

% Cyclonic -- Plot all cyclonic eddies (white contours) for a given day of a year
e=0;
for d = 1:size(cyc2018,2) % Replace with the right year
    eddy = cyc2018(day,d); % Replace with the right year 
    eddy = cell2mat(eddy);
    if size(eddy)>1
        e = e+1;
    end 
end
for r = 1:e
    eddy2 = cyc2018(day,r); % Replace with the right year 
    eddy2 = cell2mat(eddy2); 
    p = plot(eddy2(:,1), eddy2(:,2), '-w'); hold on % Edit color if desired
end
hold on

% Anticyclonic -- Plot all cyclonic eddies (magenta contours) for a given day of the year 
e=0;
for d = 1:size(ant2018,2) % Replace with the right year 
    eddy = ant2018(day,d); % Replace with the right year 
    eddy = cell2mat(eddy);
    if size(eddy)>1
        e = e+1;
    end 
end
for r = 1:e
    eddy2 = ant2018(day,r); % Replace with the right year 
    eddy2 = cell2mat(eddy2);
    p = plot(eddy2(:,1), eddy2(:,2), '-m'); hold on % Edit color if desired
end