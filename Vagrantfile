Vagrant.configure("2") do |config|
  config.vm.box = "subutai/stretch"
  config.vm.synced_folder "./ansible", "/etc/ansible", disabled: false

   config.vm.provision 'shell', inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install software-properties-common -y
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install ansible -y
    sudo apt-get install sshpass -y 
    exit 0
  SHELL
end
