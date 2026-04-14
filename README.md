## Github Repository for
# MATRIX: Rapid Quantification of Total and Active Microbial Cells with Single‑Cell Phenotypes for Environmental Microbiomes
## by Milena Gonzalo, Xipeng Liu, Yann S. Dufour, and Ashley Shade
<i>This work submitted and has a preprint.</i>


### Data
The raw images (.tif) and image-processed data files (.csv) with experimental metadata (.csv) are available on [FigShare](https://doi.org/10.6084/m9.figshare.30883721).

### To cite this work or code
Gonzalo M, X Liu, YS Dufour and A Shade. 2026. MATRIX: Rapid Quantification of Total and Active Microbial Cells with Single‑Cell Phenotypes for Environmental Microbiomes. bioRXiv. [doi: 10.64898/2026.03.16.712149v1.full ](https://doi.org/10.64898/2026.03.16.712149 )

### Abstract
Quantifying the abundance and activity of bacteria within populations and communi-ties is fundamental to systems microbiology and microbiome research. Yet direct micro-scopic cell counting remains low-throughput, labor-intensive, and prone to user variability, leading many researchers to rely on indirect proxies such as optical density or multicopy marker-gene quantification. These indirect approaches do not distinguish between active and inactive cells and can obscure ecological interpretation. Here, we introduce MATRIX (Microbial Activity and Total cell quantification via Rapid Imaging and eXtraction), an effi-cient workflow that integrates sample extraction, fluorescence staining, automated micros-copy and image analysis, and Bayesian statistical inference to quantify total and redox-active cells and derive single‑cell measurements for environmental microbial populations and communities. We demonstrate its reproducibility and versatility using both cultured isolates and high-diversity soil communities. The resulting quantitative, phenotypic datasets provide rapid, direct measurements of population of community size and activity, enabling well-powered analyses that strengthen mechanistic insight into microbial responses and improve the ecological grounding of microbiome studies. 

### Contents
Code is split up into two locations: [Image processing](https://github.com/DatInsights-com/process_quantom) and in this repo is the [Bayesian data analysis and visualization per Figure](https://github.com/ShadeLab/MATRIX_CellQuantification_2026)).
Metadata, including experimental design files, are included with the .csv files.

### Notes
* Docker is required for image processing.  [Install Docker](https://docs.docker.com/get-started/get-docker/)
* Git is required for data quality checking, statistical analysis, and visualization.  [Install git.](https://git-scm.com/install/)
* To run the processed image data and reproduce Figures, create a working directory that houses the .Rmd scripts and also the original file structure downloaded from FigShare - per figure.
* For image processing (process_quantom) it is critical that image file names match that provided in their .csv metadata file. Consider using [CheckNames_MATRIX.R]() to ensure equivalency of file names before proceeding with process_quantom.  

### Funding
This research was funded by the European Union (ERC, MicroRescue, [101087042](https://cordis.europa.eu/project/id/101087042)). Views and opinions expressed are however those of the author(s) only and do not necessarily reflect those of the European Union or the European Research Council. Neither the European Union nor the granting authority can be held responsible for them. We also acknowledge support from the Agriculture and Food Research Initiative (AFRI) of the United States Department of Agriculture (USDA) National Institute of Food and Agriculture (NIFA) Grant number #2024-67019-42477, which supported the assays involving the switchgrass rhizosphere isolates. 

### More info
[ShadeLab](http://ashley17061.wixsite.com/shadelab/home)  
[Ecologie Microbienne Lyon](https://www.ecologiemicrobiennelyon.fr/)
