Vagrant.configure("2") do |config|
  config.vm.box = "subutai/stretch"
  config.vm.synced_folder "./ansible", "/etc/ansible", disabled: false

  config.vm.provision "shell" do |s|
    s.inline = "sudo apt-get update"
    s.inline = "sudo apt-get install software-properties-common -y"
    s.inline = "sudo apt-add-repository ppa:ansible/ansible"
    s.inline = "sudo apt-get update"
    s.inline = "sudo apt-get install ansible -y"
    s.inline = "cd /etc/ansible/"
    #s.inline = "ansible-playbook playbook.yml"
  end 
end
