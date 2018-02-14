# ansible_scan_peers
Ansible code can scan version of peers and sent report + update Peers.
First you mast build vagrant machine with following command `vagrant up`
Before starting work with ansible code please do it :
- install on Peer `python2.7` like `sudo apt-get install python`
- ssh-keygen (generate ssh key on your machine) 
- ssh-copy-id user@IP_addres of Peers. (send your public keys to Peers)

After this,you can run playbook.yml in this directory `cd /etc/ansible/` like this:
- `ansible-playbook playbook.yml`

(You can edit inventory list at `hosts` file if you need to add or delete Peers. Also you can change variables at playbook.yml : `subutai_var` ; `hosts`. )

'Peers' folder is the example of how it must look like after running the playbook.yml!
