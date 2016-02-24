#!/bin/bash

    echo 127.0.0.1 localhost > /etc/hosts
    echo 192.168.57.10 domain.domain.localhost foreman >> /etc/hosts

    locale-gen de_CH.UTF-8
    echo LANG="de_CH.UTF-8" > /etc/default/locale

    apt-get update
    apt-get upgrade -y

    apt-get -y install ca-certificates
    wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
    dpkg -i puppetlabs-release-trusty.deb

    echo "deb http://deb.theforeman.org/ trusty 1.10" > /etc/apt/sources.list.d/foreman.list
    echo "deb http://deb.theforeman.org/ plugins 1.10" >> /etc/apt/sources.list.d/foreman.list
    wget -q http://deb.theforeman.org/pubkey.gpg -O- | apt-key add -

    apt-get update && apt-get -y install foreman-installer

    reboot

exit 0;
