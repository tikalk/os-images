#!/bin/bash -eux

if [[ "x${PUPPET_VERSION}" != "x" ]]; then
  rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
  yum update -y
  yum install puppet-$PUPPET_VERSION -y
else
  echo "Puppet version not provided - not installing puppet"
fi
