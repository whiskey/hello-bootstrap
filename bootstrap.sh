#cloud-boothook
#!/usr/bin/env bash

set -e

PACKAGE_NAME='nginx'

yumSetup() {
	sudo yum update -y
  sudo yum install -y ${PACKAGE_NAME}
  sudo service ${PACKAGE_NAME} start
}

aptSetup() {
	sudo apt update
  sudo apt install -y ${PACKAGE_NAME}
}

if [[ ! -z $(which yum) ]]; then
  yumSetup
elif [[ ! -z $(which apt) ]]; then
  aptSetup
else
  echo "error can't install package nginx"
  exit 1;
fi



