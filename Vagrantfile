Vagrant.configure("2") do |config|
  config.vm.box = "subutai/stretch"
  config.vm.provision "shell" do |s|
    s.inline = "sudo apt-get update"
    s.inline = "sudo apt-get install software-properties-common -y"
    s.inline = "sudo apt-add-repository ppa:ansible/ansible"
    s.inline = "sudo apt-get update"
    s.inline = "sudo apt-get install ansible -y"
    s.inline = "cd /etc/ansible/"
    s.inline = "sudo apt install git -y"
    s.inline = "sudo git clone -b private https://github.com/nurik23/ansible_scan_peers.git"
    s.inline = "sudo mv ansible_scan_peers/ansible/* /etc/ansible/"
    s.inline = "sudo rm -rf ansible_scan_peers"
    s.inline = "sudo mv ansible/* /etc/ansible/"
    s.inline = "sudo rm -rf ansible"
    s.inline = "sudo rm -rf Vagrantfile"
    s.inline = "sudo rm -rf ansible"
    #s.inline = "ansible-playbook playbook.yml"
  end 
end
