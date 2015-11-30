# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "mongo2" do |mongo2|
    mongo2.vm.network :private_network, ip: "192.168.33.12"
    mongo2.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "2"]
	vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    mongo2.vm.provision "shell", path: "provisioning/mongo2.sh"
  end

  config.vm.define "mongo3" do |mongo3|
    mongo3.vm.network :private_network, ip: "192.168.33.13"
    mongo3.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "2"]
	vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    mongo3.vm.provision "shell", path: "provisioning/mongo3.sh"
  end

  config.vm.define "mongo1" do |mongo1|
    mongo1.vm.network :private_network, ip: "192.168.33.11"
    mongo1.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "2"]
	vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    mongo1.vm.provision "shell", path: "provisioning/mongo1.sh"
  end

end
