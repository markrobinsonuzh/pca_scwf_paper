options(repos = "https://stat.ethz.ch/CRAN",
	BioC_mirror="https://ftp.gwdg.de/pub/misc/bioconductor")

install.packages("BiocManager", quiet=TRUE)
BiocManager::install(version = "3.20")
BiocManager::install("remotes", quiet=TRUE, ask=FALSE)
install.packages("https://cran.r-project.org/src/contrib/Archive/TFMPvalue/TFMPvalue_0.0.9.tar.gz", repos=NULL, quiet=TRUE, ask=FALSE)

pkgs <- 
c("stringi", 
"rARPACK", 
"RSpectra", 
"SingleCellExperiment", 
"zellkonverter", 
"BiocSingular",
"here",
"HDF5Array",
"mbkmeans",
"ggplot2",
"scater",
"scran",
"BiocParallel",
"DelayedMatrixStats",
"rhdf5",
"MultiAssayExperiment",
"SingleCellMultiModal",
"scuttle",
"AnnotationDbi",
"mclust",
"bluster",
"DelayedArray",
"dplyr",
"Seurat",
"patchwork",
#"BPCells",
"SeuratObject",
#"SeuratDisk",
"scrapper",
"parallel",
"TENxBrainData",
"EnsDb.Hsapiens.v75",
"biomaRt",
"DropletUtils")

BiocManager::install(pkgs, Ncpus=20, ask=FALSE)

BiocManager::install("satijalab/azimuth", ask=FALSE)
BiocManager::install("mojaveazure/seurat-disk", ask=FALSE)
BiocManager::install("bnprks/BPCells/r", ask=FALSE)
