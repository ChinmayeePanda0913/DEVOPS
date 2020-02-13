- Ansible: Its a configuration tool which manages automation on different machines
- It is used for for below tasks
Provisioning: Set up the various servers you need in your infrastructure.
Configuration management: Change the configuration of an application, OS, or device; start and stop services; install or update applications; implement a security policy; or perform a wide variety of other configuration tasks.
Application deployment: Make DevOps easier by automating the deployment of internally developed applications to your production systems.

- install python3 to get pip: sudo yum install python3
<img width="1030" alt="Screen Shot 2020-02-12 at 6 02 07 PM" src="https://user-images.githubusercontent.com/59787273/74388749-d1aca180-4dc1-11ea-9ebd-1ae2c5925b2e.png">

- install ansible: sudo pip3 install ansible
<img width="923" alt="Screen Shot 2020-02-12 at 6 06 20 PM" src="https://user-images.githubusercontent.com/59787273/74388957-64e5d700-4dc2-11ea-8b44-cef34fb90ead.png">

- check the version: ansible --version
- To add worker machines where you want to deploy the ansible workstation, create a hosts file which has all the data about worker machines
  :vim hosts
  
  then add the ip of the machines into the hosts as below
  <img width="339" alt="Screen Shot 2020-02-12 at 6 31 21 PM" src="https://user-images.githubusercontent.com/59787273/74390111-e3904380-4dc5-11ea-8cf8-efbf9b7ee063.png">
 -  
