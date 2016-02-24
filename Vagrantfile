# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

#  This tells vagrant which box virtualbox should use

  config.vm.box = "ubuntu/trusty64"

#  This enables port forwarding to access the foreman instance

  config.vm.network "forwarded_port", guest: 443, host: 8080

  config.vm.network "public_network", bridge: "eth2", ip: "192.168.57.10"

#  If you need to manage more network, just add more bridge if's
#  config.vm.network "public_network", bridge: "eth4", ip: "192.168.56.10"

  config.vm.synced_folder ".", "/vagrant", disabled: true
  
  config.vm.hostname = "domain.localhost"

  config.vm.provider "virtualbox" do |vb|
   vb.gui = false
   vb.name = "Foreman-110"
   vb.memory = "2048"
  end

#  documentation for more information about their specific syntax and use.
#  config.vm.provision "shell", inline: <<-SHELL
#  SHELL

  config.vm.provision :shell, :path => "files/script.sh"

  
end
