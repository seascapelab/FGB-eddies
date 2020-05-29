%% Plotting Eddies in the GoM

% This script will plit all of the eddies on a single day in a given year,
% both cyclonic and anticyclonic

%% Choose what year and load in the lon and lat MAT files
 cd '/Volumes/SeascapeLab/Limer/FGB EddyScan Data/2007/SSH_2007_Daily' % Replace with the year you want
load 'lon.mat'; load 'lat.mat' % load lat and lon

% Load in the sea surface height data from the year you choose
 ssh = ncread('2007ssh.nc', 'ssh'); 


%% Load in the Lat/Lon contours of every GoM eddy from that year
cd '/Volumes/SeascapeLab/Limer/FGB EddyScan Data/2007/Eddy Perimeter Data/'; % Choose the year here
load 'anticyclonic.mat';
load 'cyclonic.mat';

% Set the dates to display sea surface height data for the GoM map 
t1 = datetime(2007,1,1); t2 = datetime(2007,12,31); % Update for what year you are looking at
tlist = t1:t2;
tlist = yyyymmdd(tlist); tlist = tlist';
tlist(:,2) = [1:365]; % Change 365 to 366 for a leap year

day = 312; % Replace day with what day of the year you want
data = ssh(:,:,day);


% Cyclonic -- Plot all cyclonic eddies (white contours) for a given day of a year
e = 0;
figure
[X,Y] = meshgrid(lon,lat);
imagesc(lon,lat,data'); set(gca,'ydir','normal'); hold on;
colorbar
for d = 1:size(cyc2007,2) % Replace with the right year
    eddy = cyc2007(day,d); % Replace with the right year 
    eddy = cell2mat(eddy);
    if size(eddy)>1
        e = e+1;
    end 
end
for r = 1:e
    eddy2 = cyc2007(day,r); % Replace with the right year 
    eddy2 = cell2mat(eddy2); 
    p = plot(eddy2(:,1), eddy2(:,2), '-w'); hold on
end
hold on

% Anticyclonic -- Plot all cyclonic eddies (black contours) for a given day of the year 
e=0;
for d = 1:size(ant2007,2) % Replace with the right year 
    eddy = ant2007(day,d); % Replace with the right year 
    eddy = cell2mat(eddy);
    if size(eddy)>1
        e = e+1;
    end 
end
for r = 1:e
    eddy2 = ant2007(day,r); % Replace with the right year 
    eddy2 = cell2mat(eddy2);
    p = plot(eddy2(:,1), eddy2(:,2), '-k'); hold on
end