#!/bin/bash -x
echo "CHEF_VERSION -> ${CHEF_VERSION}"
echo "chef_version -> ${chef_version}"
if [[ "x${CHEF_VERSION}" != "x" ]]; then
# https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chef-11.12.2-1.el6.x86_64.rpm
wget --no-check-certificate \
    "https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chef-${CHEF_VERSION}.el6.x86_64.rpm" \
    -O /tmp/chef-${CHEF_VERSION}.el6.x86_64.rpm

rpm -ivh /tmp/chef-${CHEF_VERSION}.el6.x86_64.rpm
else
    echo "Chef version not provided - not installing chef"
fi