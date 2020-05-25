%% Calculate eddy day -- Anticyclonic

% "Eddy Days" is calculated for each month of a given year. This script measures the
% total anticyclonic eddies intersecting with a given polygon (study area) for that
% month. 3 Eddy Days could be the same eddy intersecting with the study area on 3
% separate days or 3 different eddies intersecting with the study area on
% the same day

% The third section must be ran for all years in the dataset

%% Load the shapefile -- in this project, we used a buffer for the Flower Garden Banks Sanctuary boundaries
% It will take any shapefile -- could be any study area, or a buffer around the study area -- and make a polyshape object

cd '/Volumes/SeascapeLab/Limer/FGB EddyScan Data/FGB Boundary Buffers'; % Shapefile path
buffer_STRUCT = shaperead('FGB_Buffer_25km.shp'); 
buffer_X = buffer_STRUCT.X;
buffer_Y = buffer_STRUCT.Y;
buffer = vertcat(buffer_X, buffer_Y)';
buffer = polyshape(buffer);

%% Anticyclonic Eddy Day calculation by month
cd '/Volumes/SeascapeLab/Limer/FGB EddyScan Data/2016/Eddy Perimeter Data/'; % Path to Eddy Perimeters
load 'anticyclonic.mat';

% Given the cyclonic eddy perimeters loaded, the following loops will
% generate "Eddy Days" for each month of year. Each month will have its own
% variable

% * * * IMPORTANT * * *

% If there is a leap year, the day range must be changed as specified by later comments
 
% January
e = 0;
Eddy_Day = 0;
for day = 1:31
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Jan(day) = Eddy_Day;
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Jan = sum(Eddy_Day_Jan);

% February
e = 0;
Eddy_Day = 0;
for day = 32:59 % Change 59 to 60 for a leao year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Feb(day - 31) = Eddy_Day;
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Feb = sum(Eddy_Day_Feb);

% March
e = 0;
Eddy_Day = 0;
for day = 60:90 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Mar(day - 59) = Eddy_Day; % Subtract by 1 day greater in a leap year (59 --> 60)
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Mar = sum(Eddy_Day_Mar);


% April
e = 0;
Eddy_Day = 0;
for day = 91:120 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Apr(day - 90) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Apr = sum(Eddy_Day_Apr);


% May
e = 0;
Eddy_Day = 0;
for day = 121:151 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_May(day - 120) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_May = sum(Eddy_Day_May);

% June
e = 0;
Eddy_Day = 0;
for day = 152:181 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_June(day - 151) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_June = sum(Eddy_Day_June);


% July
e = 0;
Eddy_Day = 0;
for day = 182:212 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_July(day - 181) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_July = sum(Eddy_Day_July);

% August
e = 0;
Eddy_Day = 0;
for day = 213:243 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Aug(day - 212) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Aug = sum(Eddy_Day_Aug);

% September
e = 0;
Eddy_Day = 0;
for day = 244:273 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Sep(day - 243) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Sep = sum(Eddy_Day_Sep);

% October
e = 0;
Eddy_Day = 0;
for day = 274:304 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Oct(day - 273) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Oct = sum(Eddy_Day_Oct);

% November
e = 0;
Eddy_Day = 0;
for day = 305:334 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Nov(day - 304) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Nov = sum(Eddy_Day_Nov);

% December
e = 0;
Eddy_Day = 0;
for day = 335:365 % Increase both numbers by 1 for leap year
    for d = 1:size(ant2015,2) % Replace with the right year 
        eddy = ant2015(day,d); % Replace with the right year 
        eddy = cell2mat(eddy);
        if size(eddy)>1
            e = e+1; % e gives number of eddies on a particular day
        end 
    end
    for r = 1:e
        eddy = ant2015(day,r); % Replace with the right year 
        eddy = cell2mat(eddy);
        eddy = polyshape(eddy); % For the intersection test
        overlap = overlaps(eddy,buffer);
        if overlap == 1
            Eddy_Day = Eddy_Day + 1;
        end
    end
    Eddy_Day_Dec(day - 334) = Eddy_Day; % Subtract by 1 day greater in a leap year
    Eddy_Day = 0;
    e= 0;
end
Eddy_Day_Dec = sum(Eddy_Day_Dec);


%% Organize the results from each month of each year
% Unless more eddies are obtained, column is for the year 2004, 2018 is
% column 15; The rows are the months from January to December

Eddy_Days_Anticyclonic(1,12) = Eddy_Day_Jan;
Eddy_Days_Anticyclonic(2,12) = Eddy_Day_Feb;
Eddy_Days_Anticyclonic(3,12) = Eddy_Day_Mar;
Eddy_Days_Anticyclonic(4,12) = Eddy_Day_Apr;
Eddy_Days_Anticyclonic(5,12) = Eddy_Day_May;
Eddy_Days_Anticyclonic(6,12) = Eddy_Day_June;
Eddy_Days_Anticyclonic(4,12) = Eddy_Day_Apr;
Eddy_Days_Anticyclonic(5,12) = Eddy_Day_May;
Eddy_Days_Anticyclonic(6,12) = Eddy_Day_June;
Eddy_Days_Anticyclonic(7,12) = Eddy_Day_July;
Eddy_Days_Anticyclonic(8,12) = Eddy_Day_Aug;
Eddy_Days_Anticyclonic(9,12) = Eddy_Day_Sep;
Eddy_Days_Anticyclonic(10,12) = Eddy_Day_Oct;
Eddy_Days_Anticyclonic(11,12) = Eddy_Day_Nov;
Eddy_Days_Anticyclonic(12,12) = Eddy_Day_Dec;

clear *2015*

%% * * *  The following section will require additional MAT variables that are not produced from this script * * * 

%% Boxplots -- Compare years using a boxplot 
boxplot(Eddy_Days_AntiAnticyclonic_25km); hold on;
h = findobj(gca,'Tag','Median');
set(h,'Visible','off');
hold on
% plot([3.5 5 6.5], [mean(mean_25km(4:6)) mean(mean_25km(4:6)) mean(mean_25km(4:6))], 'r-', 'LineWidth', 1.5); hold on
% plot(mean_all_lineX, mean_all_lineY, 'b-', 'LineWidth', 1.5);
plot(1,mean_25km(1), 'ko')
plot(2,mean_25km(2), 'ko')
plot(3,mean_25km(3), 'ko')
plot(4,mean_25km(4), 'ko')
plot(5,mean_25km(5), 'ko')
plot(6,mean_25km(6), 'ko')
plot(7,mean_25km(7), 'ko')
plot(8,mean_25km(8), 'ko')
plot(9,mean_25km(9), 'ko')
xticklabels({'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'});
ylabel('AntiAnticyclonic Eddy Days')