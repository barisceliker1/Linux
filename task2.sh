#!/bin/bash

while getopts "d:n:" option; do
	case "${option}" in
    		d)
			dir_path=${OPTARG}
      			;;
    		n)
      			name=${OPTARG}
      			;;
                \?)
                        exit 1
                        ;;
                
  	esac
done

if [ -z "${dir_path}" ] || [ -z "${name}" ]; then
  echo "правильный формат: $0 -d dir_path "
  exit 1
fi
