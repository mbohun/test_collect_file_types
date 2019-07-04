#!/bin/bash

FILE_TYPES=('bmp' 'c' 'doc' 'docx' 'jpg' 'jpeg' 'gif' 'md' 'odt' 'pdf' 'png' 'pnm' 'py' 'rtf' 'svg' 'tar' 'tiff' 'txt' 'xml' 'xz')
FILE_TYPES_LEN=${#FILE_TYPES[*]}
#echo "FILE_TYPES_LEN: $FILE_TYPES_LEN"

function setup_test_dir_struct {

    # number of 'users' (user dir-s) to create
    for n in `seq 0 10`
    do
        local user_dir_name="user-`printf "%.2d" ${n}`" 
        mkdir -p ${user_dir_name}

	for f in `seq 0 $(($RANDOM % 10))`
	do
	    local test_file_name="test_file-`date +%s.%N`.${FILE_TYPES[$(($RANDOM % FILE_TYPES_LEN))]}"
	    touch ${user_dir_name}/${test_file_name}
	done
    done
}

#rm -rf ./user-*

setup_test_dir_struct;

