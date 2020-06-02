# Gulf of Mexico Eddies

Included in this repository are datasets and scripts associated with 15 years of eddy contours generated for the Gulf of Mexico (GoM), from 2004-2018. Given any movement data in a lat/lon time series, or just a .shp file of your study area, these materials can be used to help determine the influence of mesoscale eddies on the distribution, dispersal, and movement of your Gulf of Mexico study species. Eddy contours were extracted from EddyScan, a sophistocated MATLAB algorithm that detects eddies from GOM_HYCOM sea surface height data (Faghmous et al., 2015). 

Datasets associated with Limer et al. 2020:
Limer B*, Bloomberg J, Holstein DM (2020) The Influence of Eddies on Coral Larval Retention in the Flower Garden Banks. Front. Mar. Sci 7:372. doi: 10.3389/fmars.2020.00372

*Corresponding author. blimer1@lsu.edu

The following is a list and description of the datasets and scripts included:

1) "Eddy Days" .MAT output and scripts

This dataset describes the number of mesoscale features interacting with a shape file over time (monthly). The script uses the Eddy_Perimeter data and defaults to a buffer polygon around the FGB National Marine Sanctuary boundaries, but has been adapted to read in any (.shp) shapefile, for use with any study area within the Gulf of Mexico. We have attached both the "Eddy_Days_Cyclonic.m" and "Eddy_Days_Anticyclonic.m" scripts, which calculate Eddy Days for cyclonic and anticyclonic eddies, respectively. The attached dataset is for Eddy Days calculated for all months in a given year. 

2) Eddy_Plotting

Using the eddy perimeter data from the "Eddy_Days" folder, the Eddy_Plotting folder contains the script, "Plot_Eddy_Contours" used to plot all eddy contours (cyclonic or anticycolonic) for a given day of a year. Movment or dispersal data can be plotted over the eddy fields to help assess the potential interactions of eddies with your study species.

3) "Santa Claus Boat -- Figures 3-4"

We have uploaded zipped MAT files containing the final datasets used to produce the boxplots in Figures 3-4 of our manuscript.

The Santa Claus Boat script was used to estimate the number of virtual larval particles entrained within any GoM eddy features throughout the entire time series of the dispersal dataset. We affectionately refer to it as "Santa Claus Boat", because it is as if someone like Santa Claus could be multiple places at once, surveying the ocean for intersections of multiple particles with multiple eddies, at the same time.

The scripts and analysis used indexing that is specific to biophysical dispersal model output and may not applicable to all movement or dispersal time-series data, so the scripts and other datasets are available upon request. 

Other associated datasets, including the trajectory data from our particle simulations, are available upon reasonable request.

Faghmous, J. H., Frenger, I., Yao, Y., Warmka, R., Lindell, A., & Kumar, V. (2015). A daily global mesoscale ocean eddy dataset from satellite altimetry. Scientific data, 2(1), 1-16.
