#!/bin/bash

cp_files_to_folder() {
	cur_folder=${PWD##*/}
	[ -d "/path/to/destination/folder/" ] && echo "Destination folder exists!" || mkdir "/path/to/destination/folder/"
	cp -r ../$cur_folder /path/to/destination/folder/$cur_folder/ && echo "$cur_folder succesfully copied in /path/to/destination/folder/$cur_folder"
}

cp_files_to_folder
