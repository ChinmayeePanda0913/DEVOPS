- create a ec2 instance with instance type "t2.medium" as it requires bigger memory
- install java on sonarqube instance :sudo amazon-linux-extras install java-openjdk11 
- add user called sonar :  sudo adduser sonar
<img width="357" alt="Screen Shot 2020-02-09 at 6 14 16 PM" src="https://user-images.githubusercontent.com/59787273/74113145-0fae8900-4b68-11ea-970e-c178072e31db.png">

- change to root user : sudo -i
- edit visudo : visudo
- add the following below root line :
    sonar   ALL=(ALL)       NOPASSWD: ALL
    <img width="702" alt="Screen Shot 2020-02-09 at 6 23 42 PM" src="https://user-images.githubusercontent.com/59787273/74113393-65cffc00-4b69-11ea-8178-2889d297363d.png">
- come out of root to ec2 by typing the command :exit
- change user to sonar : sudo su sonar
- go to opt folder :  cd /opt/
- download sonarqube : sudo wget https://fossies.org/linux/misc/sonarqube-8.0.zip
<img width="714" alt="Screen Shot 2020-02-09 at 6 33 31 PM" src="https://user-images.githubusercontent.com/59787273/74113580-b4ca6100-4b6a-11ea-9824-4b6a2e944542.png">

- unzip the sonarqube: sudo unzip sonarqube-8.0.zip
- rename sonarqube-8.0 to sonarqube8: sudo mv sonarqube-8.0 sonarqube8
- delete the zip file : sudo rm -rf sonarqube-8.0.zip
<img width="492" alt="Screen Shot 2020-02-09 at 6 39 36 PM" src="https://user-images.githubusercontent.com/59787273/74113707-8d27c880-4b6b-11ea-863b-421dfadeaac2.png">

- go to the opt folder and change the ownership to sonar from root: sudo chown -R sonar:sonar sonarqube8/
- give the permission: sudo chmod -R 775 sonarqube8/
- go to the linux-x86-64 folder: cd sonarqube8/bin/linux-x86-64/
<img width="544" alt="Screen Shot 2020-02-09 at 6 49 25 PM" src="https://user-images.githubusercontent.com/59787273/74113976-1b507e80-4b6d-11ea-9f77-aaa9fd0d02d6.png">

- start sonarqube : ./sonar.sh start
- check the port (default fort is 9000) : sudo netstat -tulnp | grep LISTEN
- go to the browser (ip of the sonarqube):9000
 <img width="1280" alt="Screen Shot 2020-02-09 at 6 56 18 PM" src="https://user-images.githubusercontent.com/59787273/74114134-e3960680-4b6d-11ea-8558-338f19f0bb85.png">
 
 - to see the code coverage on sonarqube go to jenkins-> job -> configuration -> Build -> add build-step -> add as following
 <img width="1099" alt="Screen Shot 2020-02-09 at 7 11 40 PM" src="https://user-images.githubusercontent.com/59787273/74114585-96676400-4b70-11ea-9ee1-7db6e10d5f73.png">
 
 - rebuild the project on jenkins
 - refresh the sonarqube page to see the coverage
 <img width="1280" alt="Screen Shot 2020-02-09 at 7 16 58 PM" src="https://user-images.githubusercontent.com/59787273/74114629-d1699780-4b70-11ea-837c-70757b89f5fd.png">
 
 
