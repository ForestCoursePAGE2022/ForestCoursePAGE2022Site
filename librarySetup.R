library(devtools)


#Creating the file paths
extension <- character(0)
pkg_folder <- character(0)

switch(Sys.info()[['sysname']],
       Windows= {extension<-(".zip")
                pkg_folder <-("Windows")}, #WINDOWS
       Linux  = {extension<-(".tar.gz")
                pkg_folder <-("Linux")
                print("No support implemented for Linux yet")}, #LINUX
       Darwin = {extension<-(".tgz")
                pkg_folder <-("Mac")}) #MAC

stem_path <- paste0(getwd(), "/coursepackages/", pkg_folder,"/")

pkgs <- c("tidyverse_1.2.1", "table1_1.1", 
          "stringr_1.4.0", "MASS_7.3-51.4", 
          "ggpubr_0.2.3", "foreach_1.4.7", 
          "doParallel_1.0.15")

course_lib_path <- paste0(getwd(), "/coursepackages")
all_pkgs <- paste0(stem_path, pkgs, extension)

#Install the packages
options(install.packages.check.source = "no")
install.packages(pkgs=all_pkgs, lib=course_lib_path, repos = NULL, type = "binary")

#Link the libraries
library("tidyverse", lib.loc = course_lib_path)
library("table1", lib.loc = course_lib_path)
library("stringr", lib.loc = course_lib_path)
library("MASS", lib.loc = course_lib_path)
library("ggpubr", lib.loc = course_lib_path)
library("foreach", lib.loc = course_lib_path)
library("doParallel", lib.loc = course_lib_path)



