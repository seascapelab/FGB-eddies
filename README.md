# Gulf of Mexico Eddies

Included in this repository are datasets and scripts associated with 15 years of eddy contours generated for the Gulf of Mexico, from 2004-2018. Given movement data in a lat/lon time series, and a .shp file of your study area, these materials can be used to determine the influence of mesoscale eddies on the distribution, dispersal, and movement of your Gulf of Mexico study species. 

Datasets associated with Limer et al. 2020:
Limer B*, Bloomberg J, Holstein DM (2020) The Influence of Eddies on Coral Larval Retention in the Flower Garden Banks. Front. Mar. Sci 7:372. doi: 10.3389/fmars.2020.00372

*Corresponding author. blimer1@lsu.edu

The following is a list and description of the datasets and scripts included:

1) Gulf of Mexico (GOM) mesoscale eddies

Eddies were extracted from the GOM Hybrid Coordinate Ocean Model (HYCOM, https://www.hycom.org) using sea surface height with EddyScan, a MATLAB algorithm (Faghmous et al., 2015). A folder for each year includes .MAT files for all eddies in that year.

The "Eddies_Daily" folders contain several MAT files each with a struct variable containing all eddies found on each day of the year. There is a separate MAT file for anticyclonic and cyclonic eddies of a given day. The struct variable contains several features for each eddy of that day. The "Eddy_Perimenter" folders each MAT files with two cells, one cyclonic and another anticyclonic. These cells contain the Lat/Lon perimeters for each eddy contour. The rows of the cell are the days of the year, the columns are each eddy on a given day of the year. The "SSH_Daily" folders contain sea surface height data for every day of the year, and lon.MAT and lat.MAT files used for plotting. The remaining two folders for each year are products of the EddyScan algoirthm. The GoM Eddies folder contians the script, "Plot_Eddy_Contours" used to plot all eddy contours for a given day of a year.

2) "Eddy Days" .MAT output and scripts

This dataset describes the number of mesoscale features interacting with the FGB over time. The script has been adapted to read in any (.shp) shapefile, for use with any study area within the Gulf of Mexico. We have attached both the "Eddy_Days_Cyclonic.m" and "Eddy_Days_Anticyclonic.m" scripts, which calculate Eddy Days for cyclonic and anticyclonic eddies, respectively. The attached dataset is for Eddy Days calculated for all months in all years within a 10 km and 25 km buffer of the Flower Garden Banks National Marine Sanctuary boundaries. See the script for more details about the work flow. Included in this section are separate shape files each for a 10 and 25 km buffers around the East and West Flower Garden Banks. Buffer polygons include both banks, collectively.

3) Santa Claus Boat code

This script was used to estimate the number of virtual larval particles entrained within eddy features through time. This script and necessary .MAT data will be uploaded shortly.

Other associated datasets, including the trajectory data from our particle simulations, are available upon reasonable request.
