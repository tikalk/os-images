#!/bin/bash -eux
# These were only needed for building VMware/Virtualbox extensions:
yum -y clean all
rm -rfv VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
rm -fv /tmp/chef*rpm

# clean up redhat interface persistence
rm -fv /etc/udev/rules.d/70-persistent-net.rules
if [ -r /etc/sysconfig/network-scripts/ifcfg-eth0 ]; then
  sed -i 's/^HWADDR.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
  sed -i 's/^UUID.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
fi

rm -fv /etc/ssh/ssh_host_*
rm -fv /var/lib/dhclient/dhclient-eth0.leases
rm -rfv /tmp/*
