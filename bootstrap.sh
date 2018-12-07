#!/usr/bin/env bash

PACKAGE_NAME='nginx'


yumSetup() {
	yum update
  yum install ${PACKAGE_NAME}
}

aptSetup() {
	apt update
  apt install ${PACKAGE_NAME}
}

if [[ ! -z $(which yum) ]]; then
  yumSetup
elif [[ ! -z $(which apt) ]]; then
  aptSetup
else
  echo "error can't install package nginx"
  exit 1;
fi



