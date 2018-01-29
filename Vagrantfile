# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_IMAGE = "marcoaltieri/ubuntu-desktop-16.04-64bit"
MASTER_RAM = 4000
MASTER_CPU = 2
Vagrant.configure(2) do |config|
  config.vm.define "ansible-test-server" do |subconfig|
    subconfig.vm.box = BOX_IMAGE
    # config.vm.box_version = "0.1"
    subconfig.ssh.username = "vagrant"
    #subconfig.ssh.password = "vagrant"
    subconfig.vm.hostname = "vagrant"
    subconfig.vm.network "private_network", ip: "10.55.2.10",
         virtualbox__intnet: true
    subconfig.vm.network "public_network"
    subconfig.vm.provider "virtualbox" do |v|
         v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
         v.memory = MASTER_RAM
         v.cpus = MASTER_CPU
end
Vagrant::Config.run do |config|
  config.vm.network :bridged
end
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "100000"
end
  config.vm.provision "shell" do |s|
    s.inline = "sudo apt-get update"
    s.inline = "sudo apt-get install software-properties-common -y"
    s.inline = "sudo apt-add-repository ppa:ansible/ansible"
    s.inline = "sudo apt-get update"
    s.inline = "sudo apt-get install ansible -y"
end 
end
end
