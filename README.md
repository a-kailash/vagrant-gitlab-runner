# Running GitLab Runner Shell executor on Centos7 x64 Vagrant Virtual Box VM


## Software Platforms version
1. Vagrant version 1.9.1
2. Virtual Box version 5.1.12


## Install Virtual Box Guest Additions plugin

The official Centos7 Vagrant Box does not come with virtualbox Guest Addtions installed.

There is a Vagrant Plugin however which will automatically do this for you.
Run command:
```
vagrant plugin install vagrant-vbguest
```


## Commands to run

```
vagrant up --no-provision

CIURL=http://gitlab.com/ci CITOKEN=iczzrkesvKjemG5HVh1K NAME=my-runner vagrant provision
```
