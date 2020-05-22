# Gulf of Mexico Eddies
Datasets associated with Limer et al. 2020:

Limer B*, Bloomberg J, Holstein DM (2020) The Influence of Eddies on Coral Larval Retention in the Flower Garden Banks. Front. Mar. Sci 7:372. doi: 10.3389/fmars.2020.00372

*Corresponding author. blimer1@lsu.edu

Included in this repository are datasets and scripts associated with 15 years of eddy contours generated for the Gulf of Mexico, from 2004-2018. Given lat/lon data in a time series, these materials can be used to determine the influence of mesoscale eddies on the distribution, dispersal, and movement of your Gulf of Mexico study species. The following is a list and description of the datasets and scripts included.

1) Gulf of Mexico (GOM) mesoscale eddies

Eddies were extracted from the GOM Hybrid Coordinate Ocean Model (HYCOM, https://www.hycom.org) using sea surface height with EddyScan, a MATLAB algorithm (Faghmous et al., 2015). A folder for each year includes .MAT files for all eddies in that year.

The "Eddies_Daily" folders contain several struct variables, acyclonic and antiyclonic, for all eddies found on each day of the year. Each struct contains several features for each eddy of that day. The "Eddy_Perimenter" folders each contain two cells, one cyclonic and another anticyclonic. These cells contain the Lat/Lon perimters for each eddy. The rows of the cell are the days of the year, the columns are each eddy on a given day of the year. The "SSH_Daily" folders contain sea surface height data for eevry day of the year, and lon and lat.MAT files used for plotting. The remaining two folders for each year are products of the EddyScan algoirthm.

2) "Eddy Day" .MAT output and script 

This dataset describes the number of mesoscale features interacting with the FGB over time. The script has been adapted to read in any (.shp) shapefile, for use with any study area within the Gulf of Mexico. We have attached both the "Eddy_Days_Cyclonic.m" and "Eddy_Days_Anticyclonic.m" scripts, which calculate Eddy Days for cyclonic and anticyclonic eddies, respectively. The attached dataset is for Eddy Days calculated for all months in all years within a 10 km and 25 km buffer of the Flower Garden Banks National Marine Sanctuary boundaries. See the script for more details about the work flow.

3) Santa Claus Boat code

This script was used to estimate the number of virtual larval particles entrained within eddy features through time. This script and necessary .MAT data will be uploaded shortly.

Other associated datasets, including the trajectory data from our particle simulations, are available upon reasonable request.
