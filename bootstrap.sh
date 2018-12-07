#cloud-boothook
#!/usr/bin/env bash

PACKAGE_NAME='nginx'


yumSetup() {
	yum update -y
  yum install -y ${PACKAGE_NAME}
  service ${PACKAGE_NAME} start
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



