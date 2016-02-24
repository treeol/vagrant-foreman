# Vagrant - Foreman

This is a small script which starts a VM in Virtualbox over Vagrant and installs reqiurements and tools for foreman 1.10. 

#### Requirements 

* VirtualBox latest.
* Vagrant latest. 
* Vagrant-Ubuntu-Box

#### How-To

* Download the repo with ```git clone https://github.com/mamu-icc/vagrant-foreman.git```
* Change the values in "Vagrantfile" and "files/script.sh" regarding to your network
* vagrant up

This will spawn a Ubuntu-Virtual-Machine and will install all needed tools & dependencies for Foreman.

* After the reboot, the Foreman-Installation has to be started manually with the following command:

  ``` foreman-installer --foreman-plugin-discovery-source-url=http://downloads.theforeman.org/discovery/releases/2.1/ --foreman-plugin-discovery-install-images=true ```

* This command will install Foreman with the Discovery Plugin enabled. If you don't want that, just do the following command:
 
  ``` foreman-installer ```

This can take some time.
