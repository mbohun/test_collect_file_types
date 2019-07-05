#!/bin/bash

dir_to_search=${1}
#echo "dir_to_search: ${dir_to_search}"

script_name=`basename ${0}`
WORK_DIR=`mktemp -td ${script_name}.XXXXXX`
#echo "WORK_DIR: ${WORK_DIR}"

ALL_FILES_EXT=${WORK_DIR}/all_files_ext.out
ALL_FILES_EXT_STATS=${WORK_DIR}/all_files_ext_stats.out

# TODO: This is OBVIOUSLY the simplest or rather NAIVE approach, we have to
#       handle:
#       - multiple '.' in dir and file name-s
#       - whitespaces in dir and file name-s (so popular with windows users)
#       - TODO
#
find ${1} -type f | sed -e 's/^.*\.//g' | sort > ${ALL_FILES_EXT}
for ext in `cat ${ALL_FILES_EXT} | uniq`
do
    echo "`grep -c $ext ${ALL_FILES_EXT}` $ext" >> ${ALL_FILES_EXT_STATS}
done

# TODO: cleanup the var names
cat ${ALL_FILES_EXT_STATS} | sort -nr > ${WORK_DIR}/sorted.out

# NOTE: the padding is for the printf padding/formatting of the final result
padding=$((`cat ${WORK_DIR}/sorted.out | head -n1 | sed -e 's/ .*$//g' | wc -m` - 1))

cat ${WORK_DIR}/sorted.out | xargs printf "%${padding}.d %s\n" > ${WORK_DIR}/result.out
cat ${WORK_DIR}/result.out

#rm -rf ${WORK_DIR}
