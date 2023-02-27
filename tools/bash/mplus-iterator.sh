#!/bin/bash
#
# a simple timestamp iterator for not overwriting out/html results
# adaptable for WSL2, Linux, and OSX
#

# define our world
inp_file=""
out_html=""
timestamp=$(date '+%Y%m%d-%H%M%S')

# check and create an output folder just because I like seperation
[ -d output ] || mkdir output

# setup some command line flags for ease of use
while getopts i:t: flag
do
  case "${flag}" in
    i) inp_file=${OPTARG};;
    t) out_html=${OPTARG};;
  esac
done

# do we have a file name, if not exit
if [ -n "$inp_file" ]; then
  # run mplus
  # TODO pull mplus.exe out into a per-platform check
  mplus.exe $inp_file.inp output/$inp_file-$timestamp.out /diagram

  # do we want HTML?
  if [ -n "$out_html" ]; then
    mplus.exe $inp_file.inp /html
    mv $inp_file.htm output/$inp_file-$timestamp.html

    # open in Chrome (this is pretty WSL2 hacky)
    # TODO add platform check, add script injector
    abs_path=$(readlink -e output/$inp_file-$timestamp.html)
    wsl_path=`wslpath -w $abs_path`
    google-chrome-stable $wsl_path
  else
    # open results in VS Code
    code output/$inp_file-$timestamp.out
  fi
else
  echo "INP input file not set; use -i."
  exit;
fi