# Reasoning_Uncertainity

## Dates

#### AVIRIS 
* Before 2013-06-26
* After 2013-11-17
* After 2014-06-03
#### MASTER 
* Before 2013-06-26
* After 2013-11-17
* After 2014-06-03
#### LiDAR 
* Before 2010-07-21
* After 2013-11-15

## Derived Data

#### AVIRIS
* Anthocyanin Reflectance Index 1 ARI1 
	* Anthocyanin content estimation. Anthocyanins are purple-ish and absorb green and yellow light wavelengths. 
* Anthocyanin Reflectance Index 2 ARI2
	* Anthocyanin content estimation. 
* Atmospherically Resistant Vegetation Index ARVI
	* Like NDVI but corrects for atmospheric conditions.
* Carotenoid Reflectance Index 1 CRI1
	* Carotenoid content estimation. Carotenoids are orange-ish and absorb violet to green light. 
* Carotenoid Reflectance Index 2 CRI2
	* Carotenoid content estimation. 
* Char Soil Index CSI
	* Uses increase in shortwave infrared reflectance (heat?) to detect if there has been a fire. Important to know if organic matter in soil has been burned or not.
* differenced Normalized Burn Ratio dNBR
	* Better at identifying severely burned area. 
* Enhanced Vegetation Index EVI
	* Used to enhance the "vegetation signal" in high biomass regions. Decouples canopy background structure and also reduced atmospheric disturbances. 
* Modified Carotenoid Reflectance Index Green Model mCRIG
	* Carotenoid content estimation. 
* Modified Carotenoid Reflectance Index Red Edge Model mCRIEE
	* Carotenoid content estimation. 
* Modified Chlorophyll Absorption Ratio Index mCARI
	* Chlorophyll content estimation. 
* Modified Red Edge Normalized Difference Vegetation Index mNDVI705
	* Chlorophyll content estimation. Chlorophyll absorbs basically everything but green light. 
* Modified Red Edge Simple Ratio Index mSR705
	* Clorophyll content estimation. 
* Modified Soil Adjusted Vegetation Index mSAVI
	* Incorporates function rather than a variable that accounts for the affect of soil on the reflectance. 
* Normalized Burn Ratio NBR
	* Relates to vegetation moisture content. 
* Normalized Difference Infrared Index NDII
	* Index sensitive to water content in leaves. 
* Normalized Difference Lignin Index NDLI
	* Detects reflectance of lignin (or woody matter) in vegetation. 
* Normalized Difference Nitrogen Index NDNI
	* A measure of nitrogen concentration of remotely sensed foliage. Nitrogen is an important component of chlorophyll and is generally present in high concentration in vegetation that is growing quickly.
* Normalized Difference Vegetation Index NDVI
	* Detects whether an image contains green vegetation but is sensitive to the presence of soil and atmospheric conditions. 
* Photochemical Reflectance Index PRI 
	* Highly correlated with plant pigments. Used to assess plant photosynthetic capacity. 
* Plant Senescence Reflectance Index PSRI
	* Indicates plant stress and fruit ripening. 
* Red Edge Normalized Difference Vegetation Index NDVI705
	* Same as NDVI but corrects for plant specular reflectance. 
* Red Edge Position Index REPI
	* Sensitive to changes in chlorophyll concentration. 
* Red Green Ration Index RGRI
	*  Indicates the relative expression of leaf redness caused by anthocyanin to that of chlorophyll.
* Relative Burn Ratio RBR
	* Sensitive to changes commonly caused by fire and highly correlated with field-based measures of burn severity. 
* Relative difference Normalized Burn Ratio RdNBR
	* Sensitive to changes commonly caused by fire and highly correlated with field-based measures of burn severity. 
* Simple Ratio Index SR
	* Ratio between the red and near infrared bands. 
* Structure Insensitive Pigment Index SIPI
	* A good index to use in areas with high variability in the canopy structure.
* Vogelmann Red Edge Index 1 VOG1
	* Sensitive to the combined effects of foliage chlorophyll concentration, canopy leaf area, and water content.
* Water Band Index WBI
	* Sensitive to changes in canopy water status.
#### MASTER
* Burned Area Index BAI
	* Uses red bands and near-infrared bands to figure out if there is more low reflectance stuff (i.e. charcoal). Can get confused with water and cloud shadows.
* Char Soil Index CSI
	* Uses increase in shortwave infrared reflectance (heat?) to detect if there has been a fire. Important to know if organic matter in soil has been burned or not. 
* Char Soil Index Thermal CSIT
	* May be Thermally enhanced version of CSI. 
* differenced Normalized Burn Ratio dNBR
	* Better at identifying severely burned area. 
* Enhanced Vegetation Index EVI 
	* Used to enhance the "vegetation signal" in high biomass regions. Decouples canopy background structure and also reduced atmospheric disturbances. 
* Global Environment Monitoring Index GEMI
	* Reduces the impact of atmospheric conditions on monitoring (better than NDVI)
* Global Environment Monitoring Index 3 GEMI3
	* Reduces the impact of atmospheric conditions on monitoring (better than NDVI)
* Mid Infrared Burn Index MIRBI
	* Another burn index, unknown use. 
* Modified Soil Adjusted Vegetation Index mSAVI 
	* Incorporates function rather than a variable that accounts for the affect of soil on the reflectance. 
* Near-Shortwave Infrared Emissivity version 1 NSEv1
* Near-Shortwave Infrared Emissivity version 2 NSEv2
* Near-Shortwave Infrared Temperature version 1 NSTv1
* Near-Shortwave Infrared Temperature version 2 NSTv2
* Normalized Burn Ratio NBR 
	* Relates to vegetation moisture content.
* Normalized Burn Ratio Thermal NBRT
	* Relates to vegetation moisture content.
* Normalized Difference Vegetation Index NDVI
	* Detects whether an image contains green vegetation but is sensitive to the presence of soil and atmospheric conditions. 
* Normalized Difference Vegetation Index Thermal NDVIT
	* Detects whether an image contains green vegetation but is sensitive to the presence of soil and atmospheric conditions. 
* Relative Burn Ratio RBR 
	* Sensitive to changes commonly caused by fire and highly correlated with field-based measures of burn severity. 
* Relative difference Normalized Burn Ratio RdNBR 
	* Sensitive to changes commonly caused by fire and highly correlated with field-based measures of burn severity. 
* Shortwave Middle Infrared Index SMI
* Simple Ratio Index SR
	* Ratio between the red and near infrared bands. 
* Soil Adjusted Vegetation Index SAVI
	* Incorporates variable that accounts for the affect of soil on the reflectance. 
* Soil Adjusted Vegetation Index Thermal SAVIT
	* Incorporates variable that accounts for the affect of soil on the reflectance. 
* Vegetation Index 3 VI3
* Vegetation Index 6 Thermal VI6T
#### LiDAR
* Canopy height model Canopy_height_model_1meter
* Intensity Intensity_1p5meter
* Count of all returns 30 meter Count_all_returns_30meter
* Count of first returns 30 meter Count_first_returns_30meter
* Canopy cover >2 m from first returns Cover_first_returns_above_2m_30meter
* Canopy cover >2 m from all returns Cover_all_returns_above_2m_30meter
* Canopy cover 2-8 m from all returns Cover_all_returns_above_2to8m_30meter
* Canopy cover 8-16 m from all returns Cover_all_returns_above_8to16m_30meter
* Canopy cover 16-32 m from all returns Cover_all_returns_above_16to32m_30meter
* Canopy cover >32 m from all returns Cover_all_returns_above_32m_30meter
* Mean height for all returns above 2 m Height_mean_all_returns_above_2m_30meter
* Height of 25th percentile for returns above 2 m Height_P25_all_returns_above_2m_30meter
* Height of 50th percentile for returns above 2 m Height_P50_all_returns_above_2m_30meter
* Height of 75th percentile for returns above 2 m Height_P75_all_returns_above_2m_30meter
* Height of 95th percentile for returns above 2 m Height_P95_all_returns_above_2m_30meter
* Standard deviation of all height returns above 2 m Height_stdev_all_returns_above_2m_30meter
* Rumple – rugosity of canopy surface Rumple_30meter
* Aspect Topography_aspect_30meter
* Elevation Topography_elevation_30meter
* Slope Topography_slope_30meter
* SRI – topographic Solar Radiation Index Topography_sri_30meter
* Intensity 95% Intensity_95percent_30meter
* Intensity mean Intensity_mean_30meter
* Canopy cover >2 m from first returns Cover_1st_returns_above_2m_30meter (RimFire files only.)
