1.Ec2-Instance Created

<img width="1280" alt="Screen Shot 2020-02-08 at 10 45 32 PM" src="https://user-images.githubusercontent.com/59787273/74096468-1fc15c80-4ac5-11ea-9d27-7990c25aef3d.png">

2.To install jenkins in the master jenkins follow the instructions
  - go to jenkins.io/download
  - click   Red Hat/Fedora/CentOS
      <img width="1280" alt="Screen Shot 2020-02-08 at 11 01 26 PM" src="https://user-images.githubusercontent.com/59787273/74096639-fd304300-4ac6-11ea-997d-72e9d98b66de.png">

  - Create repository for jenkins by running the following command on terminal
      :sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
      <img width="679" alt="Screen Shot 2020-02-08 at 11 06 51 PM" src="https://user-images.githubusercontent.com/59787273/74096699-babb3600-4ac7-11ea-83cf-4a8cef1bbefa.png">
      
  -to check the repositories available the command is
    :ls -l /etc/yum.repos.d/
    <img width="595" alt="Screen Shot 2020-02-08 at 11 09 10 PM" src="https://user-images.githubusercontent.com/59787273/74096734-28676200-4ac8-11ea-87c7-da32f047c22e.png">
    
  -then add the key
    :sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    
  - install jenkins the command is :sudo yum install jenkins
  <img width="684" alt="Screen Shot 2020-02-08 at 11 13 32 PM" src="https://user-images.githubusercontent.com/59787273/74096777-d3781b80-4ac8-11ea-9eb1-cb6d6f6e3715.png">

  - install java :sudo yum install java-1.8.0-openjdk-devel
  
