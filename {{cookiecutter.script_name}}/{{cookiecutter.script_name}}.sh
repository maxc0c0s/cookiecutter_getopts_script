#!/usr/bin/env bash

function usage {
cat << END

{{cookiecutter.usage_desc}}

{{cookiecutter.description}}

{{cookiecutter.option_desc}}
END
}

OPTSTRING=":{{cookiecutter.option}}"

if [[ -z $@ ]]
then
	usage
	exit 1
fi
while getopts $OPTSTRING opt; do
	case $opt in
		{{cookiecutter.option}})
			# TODO enter command here
			;;
		\?)
			usage
			;;
	esac
done
