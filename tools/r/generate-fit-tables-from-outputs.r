#!/usr/bin/env Rscript
# This is a simple R script to produce a table of fit statistics from a whole
# bunch of output files. If you're attempting to rapid-iterate a model.
#
# This is a very basic helper; there are more programmer centric ways to do this
# in R or R+Python with less churn.

args = commandArgs(trailingOnly=TRUE)

# fast check to make sure we have at least a path
if (length(args)==0) {
  stop("requires path to MPlus output", call.=FALSE)
}

# load the MPlus package
library(MplusAutomation)

# set out working directory to somewhere there are *.out files
setwd(args[1])
basepath <- getwd()

# read all the *.out files from the basepath
allOutput <- readModels(basepath)

# generate the html summary file
HTMLSummaryTable(
  allOutput,
  filename = file.path(getwd(), "model-comparison.html"),
  keepCols = c("Filename",
               "ChiSqM_Value", "ChiSqM_DF", "ChiSqM_PValue",
               "CFI", "TLI", "SRMR",
               "RMSEA_Estimate", "RMSEA_90CI_LB", "RMSEA_90CI_UB", "RMSEA_pLT05"),
  sortBy = "Filename")