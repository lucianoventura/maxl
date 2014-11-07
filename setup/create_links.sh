#!/bin/bash

# create_links.sh

script_version="0.1.0"

# Created by:  luciano.ventura@gmail.com 2014_10_10

# If you need to insert your utilities in your path:
#
# Make sure you have "~/bin" created and in your $PATH
#


# from where do you want to create the links
readonly source_bin_dir=/u01/Oracle/home_infra/maxl/bin


# source list
readonly source_bin_list=$(ls $source_bin_dir | sort)


# where do you want to create the links
readonly target_bin_dir=~/bin


cd $target_bin_dir


# create all links
for item in $source_bin_list; do ln -sv $source_bin_dir/$item; done

