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

        local user_index_file=${user_dir_name}/index.html

        # write the index.html header
        echo "<html>"                                   > ${user_index_file}
        echo "    <head>"                              >> ${user_index_file}
        echo "        <title>${user_dir_name}</title>" >> ${user_index_file}
        echo "    </head>"                             >> ${user_index_file}
        echo "    <body>"                              >> ${user_index_file}
        echo "        <h2>attachments</h2>"            >> ${user_index_file}

        for f in `seq 0 $(($RANDOM % 10))`
        do
            local test_file_name="test_file-`date +%s.%N`.${FILE_TYPES[$(($RANDOM % FILE_TYPES_LEN))]}"
            touch ${user_dir_name}/${test_file_name}

            # add the $test_file_name to the index.html
            echo "        <a href=\"${test_file_name}\">${test_file_name}</a>" >> ${user_index_file}
            echo "        <p></p>" >> ${user_index_file}
        done

        # write the index.html footer
        echo "    </body>" >> ${user_index_file}
        echo "</html>" >> ${user_index_file}
    done
}

#rm -rf ./user-*

setup_test_dir_struct;

