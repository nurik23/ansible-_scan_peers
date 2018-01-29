sudo subutai
if [ $? -eq 0 ]; then
  sudo hostname -I | awk '{print $1}' >> /home/ubuntu/aboutProd
  echo `date` >> /home/ubuntu/aboutProd
  echo "#######################################" >> /home/ubuntu/aboutProd
  sudo /snap/bin/subutai p2p -v >> /home/ubuntu/aboutProd
  echo "Agent and RH version : " >> /home/ubuntu/aboutProd 
  sudo subutai -v >> /home/ubuntu/aboutProd
  echo "Management version : " >> /home/ubuntu/aboutProd
  sudo subutai attach management cat /opt/subutai-mng/etc/git.properties | grep git.build.version | cut -d"=" -f 2 >> /home/ubuntu/aboutProd
  fi
    
sudo subutai-master
  if [ $? -eq 0 ]; then
  sudo hostname -I | awk '{print $1}' >> /home/ubuntu/aboutMaster
  echo `date` >> /home/ubuntu/aboutMaster
  echo "#######################################" >> /home/ubuntu/aboutMaster 
    sudo /snap/bin/subutai-master p2p -v >> /home/ubuntu/aboutMaster
    echo "Agent and RH version : " >> /home/ubuntu/aboutMaster
    sudo subutai-master -v >> /home/ubuntu/aboutMaster
    echo "Management version : " >> /home/ubuntu/aboutMaster
    sudo subutai-master attach management cat /opt/subutai-mng/etc/git.properties | grep git.build.version | cut -d"=" -f 2 >> /home/ubuntu/aboutMaster
    fi 
    
sudo subutai-dev
  if [ $? -eq 0 ]; then
  sudo hostname -I | awk '{print $1}' >> /home/ubuntu/aboutDev
  echo "#######################################" >> /home/ubuntu/aboutDev  
  echo `date` >> /home/ubuntu/aboutDev
    sudo /snap/bin/subutai-dev p2p -v >> /home/ubuntu/aboutDev
    echo "Agent and RH version : " >> /home/ubuntu/aboutDev
    sudo subutai-dev -v >> /home/ubuntu/aboutDev
    echo "Management version : " >> /home/ubuntu/aboutDev
    sudo subutai-dev attach management cat /opt/subutai-mng/etc/git.properties | grep git.build.version | cut -d"=" -f 2 >> /home/ubuntu/aboutDev
    fi
 
sudo apt-get sshpass 
sudo sshpass -p [*****] scp /home/ubuntu/about* [user@Ip]:~/Desktop/Peers/
sudo rm -rf about*
sudo rm -rf scanpeer.sh

