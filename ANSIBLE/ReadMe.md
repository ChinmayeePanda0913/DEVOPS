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
- Generate private and public key using ssh: ssh-keygen
<img width="955" alt="Screen Shot 2020-02-12 at 6 37 21 PM" src="https://user-images.githubusercontent.com/59787273/74390430-e0498780-4dc6-11ea-9c98-53a2777f25c5.png">

- copy the public key from id-rsa.pub and goto the server01 instance and paste it in .ssh/authorized-key and do the same for server02 also
- to see the available hosts :ansible -i hosts all -a "hostname" -u ec2-user
<img width="650" alt="Screen Shot 2020-02-12 at 10 33 41 PM" src="https://user-images.githubusercontent.com/59787273/74401775-ea2fb280-4de7-11ea-858c-8f03977f3cca.png">

- to see a particular node : ansible -i hosts AnsibleNode01 -a "hostname" -u ec2-user
<img width="749" alt="Screen Shot 2020-02-12 at 10 38 25 PM" src="https://user-images.githubusercontent.com/59787273/74401967-80fc6f00-4de8-11ea-9521-1787852f5a7c.png">

- To install particular software and update all worker systems, create YAML or YML file
<img width="416" alt="Screen Shot 2020-02-12 at 10 45 00 PM" src="https://user-images.githubusercontent.com/59787273/74403387-a12e2d00-4dec-11ea-8bfa-470ca8f10fdd.png">

- make sure you have index.html file in the same folder with the yml file.

- to copy a file from local to remote server: scp -i /Users/Chinmayee/Downloads/Chinmayee.pem /Users/chinmayee/Documents/DEVOPS/Document/Docker/index.html ec2-user@13.58.93.71:/tmp
<img width="937" alt="Screen Shot 2020-02-12 at 11 03 38 PM" src="https://user-images.githubusercontent.com/59787273/74403254-3a107880-4dec-11ea-9b77-402346fbb0f5.png">

- deploy the ansible file: ansible-playbook -i hosts -u ec2-user httpd.yml
<img width="908" alt="Screen Shot 2020-02-12 at 11 14 04 PM" src="https://user-images.githubusercontent.com/59787273/74403628-77293a80-4ded-11ea-83c7-0aa2f368983b.png">

- Once ansible is successfully executed, all of the worker machine have httpd server running with the index.html file
<img width="1280" alt="Screen Shot 2020-02-12 at 11 16 55 PM" src="https://user-images.githubusercontent.com/59787273/74403808-29f99880-4dee-11ea-8090-eecf73ca70e5.png">

- to do the same on second machine we have to edit the yml file
hosts= AnsibleNode01:AnsibleNode02 . or ALL

- now the second server is running
<img width="1280" alt="Screen Shot 2020-02-12 at 11 22 34 PM" src="https://user-images.githubusercontent.com/59787273/74403975-c7ed6300-4dee-11ea-8f7b-6abfbc440c9b.png">
