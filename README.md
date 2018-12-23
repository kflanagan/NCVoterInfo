# NCVoterInfo


## This set of scripts are used to download the full NC voter registration file, uncompress it.

## After that you go set up a docker container running mysql and load the data and follow directions in how-to-voters file.


## Pre-requisites

    Linux system with docker and git client installed

https://docs.docker.com/install/linux/docker-ce/ubuntu/ 

https://help.ubuntu.com/lts/serverguide/git.html.en



## Portainer for managing docker containers

1. Install Portainer for managing docker containers etc.
https://portainer.readthedocs.io/en/latest/deployment.html



### Relevant commands

      sudo docker volume create portainer_data

      sudo docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer



## Scripts for getting the data and loading the database

###   Set the stage for the MySQL container


      sudo mkdir /home/NCVoters
  
      sudo cd /home/NCVoters
  
      sudo git clone https://github.com/kflanagan/NCVoterInfo.git

### MySQL work starts here:

    https://hub.docker.com/_/mysql/

  1.  Pull and start a mysql instance 

  Info  
      
      name: NCVoterDB

      user: root
      
      password: voters
    
  Actual command


      sudo docker run -d -p 3306:3306 --name NCVoterDB --restart always -e MYSQL_ROOT_PASSWORD=voters -v /home/NCVoters:/var/lib/mysql -v /etc/localtime:/etc/localtime:ro mysql:latest


4.  Check on MySQL 
    
    Open a browser and go to http://localhost:9000

    See Portainer and MySQL instance running

5. Install MySQL Workbench using directions  http://www.mysql.com/downloads/workbench


6. When you launch workbench create a connection with this info:
   - Connction info:
      - user: root
      - password: voters
      - host: localhost
      - port: 3306


7. Execute scripts to load database from MySQL Workbench

    Open then execute  /home/NCVoters/CreateNCVoter.sql

      This creates the empty schema that holds the data

8. Fetch the VoterDB from AWS

    wget https://s3.amazonaws.com/dl.ncsbe.gov/data/ncvoter_Statewide.zip

9. Uncompress the text file

    unzip ncvoter_Statewide.zip

10. Open then execute /home/NCVoters/loadNCVoters.sql

    This will take some time, it is loading the entire voter registration DB


11. Open then execute  /home/NCVoters/Test-Query.sql

    This will show the registered voters last name Flanagan in Wake county, just a few fields, but a decent test
