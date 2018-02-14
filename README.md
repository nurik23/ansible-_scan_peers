# ansible_scan_peers
Ansible code can scan version of peers and sent report + update Peers.
First you mast build vagrant machine with following command `vagrant up` 
Before starting work with ansible code please do it :
- install on Peer `python2.7` like `sudo apt-get install python`
- ssh-keygen (generate ssh key on your machine) 
- ssh-copy-id user@IP_addres of Peers. (send your public keys to Peers)

And after do it you can rup playbook.yml like this:
- `ansible-playbook playbook.yml`

'Peers' folder is the example of how it must look like after running the playbook.yml!
