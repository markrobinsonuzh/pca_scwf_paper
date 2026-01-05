### create sc_mix data ####

# download the data from here:
# https://github.com/LuyiTian/sc_mixology/blob/master/data/sincell_with_class_5cl.RData

url <- "https://github.com/LuyiTian/sc_mixology/raw/refs/heads/master/data/sincell_with_class_5cl.RData"
bn <- basename(url)

if(!file.exists(bn)) {
  download.file(url, destfile = bn)
}


# 5 cell line 
load(bn)

sce_sc_10x_5cl_qc

# create RData object ####

save(sce_sc_10x_5cl_qc, file = "sc_mix.RData")


# save h5ad object #####

library(zellkonverter)
out_path <- tempfile(pattern = ".h5ad")

writeH5AD(sce_sc_10x_5cl_qc, file = "sc_mixolgy_10x_5cl.h5ad")

library(anndataR)
x.ad <- as_AnnData(sce_sc_10x_5cl_qc)
write_h5ad(x.ad, "sc_mixolgy_10x_5cl-anndataR.h5ad", 
           mode = "w", compression = "gzip")

# interesting size differences
# (base) mark@MLS-M-MAROBI pca_scwf_paper % ls -lh sc_mix*
# -rw-r--r--@ 1 mark  staff    78M Jan  2 16:32 sc_mix.RData
# -rw-r--r--@ 1 mark  staff   228M Jan  2 16:44 sc_mixolgy_10x_5cl-anndataR.h5ad
# -rw-r--r--@ 1 mark  staff   883M Jan  2 16:37 sc_mixolgy_10x_5cl.h5ad


