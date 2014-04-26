tikalk/os-images
=============

The images supported:

1 .CentOS 6.5 x86_64 + Chef on VirtualBox with Packer 0.5.2 Template
2. More to come ...

## Packer Build for VirtualBox

```
packer validate templates/CentOS_6.5-x86_64.json
packer build -only virtualbox-iso templates/CentOS_6.5-x86_64.json
```
## Building @ Home

```
packer build -var 'mirror=http://192.168.60.18' templates/CentOS_6.5-x86_64.json
```
I just have a local http server with the relevant iso's so I dont start downloading from the internet each time I build an image

## Add Vagrant Box

```
box add BOXNAME builds/virtualbox/tikalk-CentOS-6.5-x86_64-v20140426.box
```

## Vagrant Cloud

```
mkdir centos
cd centos
vagrant init tikalk/centos
vagrant up
```


## or Public URL Init

```
mkdir centos
cd centos
vagrant init BOXNAME BOXURL
vagrant up
```

## or Edit Vagrantfile

```diff
    BOXNAME = 'tikalk-CentOS-6.5-x86_64-v20140426.box'
    BOXURL = 'http://tbc'
   # please see the online documentation at vagrantup.com.

   # Every Vagrant virtual environment requires a box to build off of.
-  config.vm.box = "base"
+  config.vm.box = BOXNAME

   # The url from where the 'config.vm.box' box will be fetched if it
   # doesn't already exist on the user's system.
-  # config.vm.box_url = "http://domain.com/path/to/above.box"
+  config.vm.box_url = BOXURL

   # Create a forwarded port mapping which allows access to a specific port
   # within the machine from a port on the host machine. In the example below,
```

```
vagrant up
```

Enjoy!!
