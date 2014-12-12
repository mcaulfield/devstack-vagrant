# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "baremettle/ubuntu-14.04"

  config.vm.provider "libvirt" do |v|
    v.memory = 16000
    v.cpus = 8
  end 

  config.vm.provision "shell", path: "setupdevstack.sh"
  config.vm.network "forwarded_port", guest: 80, host: 9080
  config.vm.network "forwarded_port", guest: 5000, host: 5000

end
