#!/bin/bash

# Change the destination folder absolute path here.
dest_folder=$1
cur_folder_name=${PWD##*/}

cp_files_to_folder() {
	[ -d "$dest_folder" ] && echo "$dest_folder exists!" || ( mkdir "$dest_folder" && echo "$dest_folder created!" )
	[ -d "$dest_folder/$cur_folder_name" ] && cp -r ./* $dest_folder/$cur_folder_name/ && echo "Files copied to $dest_folder/$cur_folder_name succesfully!" || ( cp -r ../$cur_folder_name $dest_folder/$cur_folder_name/ && echo "$cur_folder_name succesfully copied in $dest_folder/$cur_folder_name" )
}

cp_files_to_folder
