install.packages("BiocManager")

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
"BPCells",
"SeuratObject",
"SeuratDisk",
"scrapper",
"parallel",
"TENxBrainData",
"EnsDb.Hsapiens.v75",
"satijalab/azimuth",
"bnprks/BPCells/r",
"biomaRt",
"DropletUtils")

BiocManager::install(pkgs, Ncpus=10, quite=TRUE)
    

