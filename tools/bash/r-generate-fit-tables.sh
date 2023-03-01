#!/bin/bash
#
# this is really somewhat hacky to work with a symlined Rscript in Windows
# to the WSL2 env (so you don't have to run dup R envs)
#
# As such, it lives on relative paths from VS Code so you can use this with
# tasks

# define our world
output_folder=""
ws_folder=""
timestamp=$(date '+%Y%m%d-%H%M%S')

# setup some command line flags for ease of use
while getopts i:w: flag
do
  case "${flag}" in
    i) output_folder=${OPTARG};;
    w) ws_folder=${OPTARG};;
  esac
done

# do we have a folder output path, if not exit
if [ -n "$output_folder" ]; then
  # make sure you are where you think, otherwise this relative will be wrong
  cd $ws_folder

  # run the summaries in R
  Rscript --vanilla ./tools/r/generate-fit-tables-from-outputs.r $output_folder

  # Add the pretty css and js threshold checks
  cat ./tools/inject-templates/append-to-fit-tables-output.html >> $output_folder/model-comparison.html

  # open in Chrome (this is pretty WSL2 hacky)
  # TODO add platform check, add script injector
  abs_path=$(readlink -e $output_folder/model-comparison.html)
  wsl_path=`wslpath -w $abs_path`
  google-chrome-stable $wsl_path
else
  echo "output results not set; use -i."
  exit;
fi