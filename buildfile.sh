#!/bin/bash

PACKERCMD=`which packer`
CURRENT_PUPPET_VERSION='3.5.1'
CURRENT_CHEF_VERSION='11.12.0-1'

[[ -z ${PACKERCMD} ]] && echo "Please install packer, and re-run $0"

packer build -var 'mirror=http://192.168.5.18' -var "chef_version=${CURRENT_CHEF_VERSION}" -var "puppet_version=${CURRENT_PUPPET_VERSION}" templates/CentOS_6.5.json
