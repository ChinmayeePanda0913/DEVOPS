1.Ec2-Instance Created

<img width="1280" alt="Screen Shot 2020-02-08 at 10 45 32 PM" src="https://user-images.githubusercontent.com/59787273/74096468-1fc15c80-4ac5-11ea-9d27-7990c25aef3d.png">

2.To install jenkins in the master jenkins follow the instructions
  - go to jenkins.io/download
  - click   Red Hat/Fedora/CentOS
      <img width="1280" alt="Screen Shot 2020-02-08 at 11 01 26 PM" src="https://user-images.githubusercontent.com/59787273/74096639-fd304300-4ac6-11ea-997d-72e9d98b66de.png">

  - Create repository for jenkins by running the following command on terminal
      :sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
      <img width="679" alt="Screen Shot 2020-02-08 at 11 06 51 PM" src="https://user-images.githubusercontent.com/59787273/74096699-babb3600-4ac7-11ea-83cf-4a8cef1bbefa.png">
      
  - to check the repositories available the command is
    :ls -l /etc/yum.repos.d/
    <img width="595" alt="Screen Shot 2020-02-08 at 11 09 10 PM" src="https://user-images.githubusercontent.com/59787273/74096734-28676200-4ac8-11ea-87c7-da32f047c22e.png">
    
  - then add the key
    :sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    
  - install jenkins the command is :sudo yum install jenkins
  <img width="684" alt="Screen Shot 2020-02-08 at 11 13 32 PM" src="https://user-images.githubusercontent.com/59787273/74096777-d3781b80-4ac8-11ea-9eb1-cb6d6f6e3715.png">

  - install java :sudo yum install java-1.8.0-openjdk-devel
  - to start jenkins : sudo service jenkins start
  <img width="589" alt="Screen Shot 2020-02-08 at 11 59 50 PM" src="https://user-images.githubusercontent.com/59787273/74097231-52705280-4acf-11ea-9380-7bb693ceb8ac.png">
  
  - check jenkins if it is listening
    open browser and type - <pubic ip>:8080
  <img width="1280" alt="Screen Shot 2020-02-09 at 12 04 07 AM" src="https://user-images.githubusercontent.com/59787273/74097265-bbf06100-4acf-11ea-994d-b743322f27f9.png">
  
  - to see the password of jenkins : sudo cat /var/lib/jenkins/secrets/initialAdminPassword
  - copy the pasword from terminal to the jenkins and click on continue
  - the plug-in installation starts
  - give the credentials
  <img width="1280" alt="Screen Shot 2020-02-09 at 12 11 06 AM" src="https://user-images.githubusercontent.com/59787273/74097353-bc3d2c00-4ad0-11ea-8b76-45d932544dc4.png">
  - jenkins started
  
3. install git on jenkins :sudo yum install git

4. Configure jenkins
    - create a job
    <img width="1280" alt="Screen Shot 2020-02-09 at 12 16 15 AM" src="https://user-images.githubusercontent.com/59787273/74097443-80ef2d00-4ad1-11ea-98cc-b17ee23474ed.png">
    - click "freestyle project"
    - add the git link of the project : https://github.com/wakaleo/game-of-life.git and click on save
    - add maven
        jenkins-> manage jenkins-> global tool configuration-> Maven-> Maven Name: Maven3 -> Save
    - jenkins-> TestProject-> Configure-> Build-> Maven Version: Maven3
                                                  Goals : clean install
                                                  
    <img width="1280" alt="Screen Shot 2020-02-09 at 12 38 38 AM" src="https://user-images.githubusercontent.com/59787273/74097683-bc3f2b00-4ad4-11ea-9322-fbb1d28f676c.png">
    - buld project
    <img width="1280" alt="Screen Shot 2020-02-09 at 12 41 09 AM" src="https://user-images.githubusercontent.com/59787273/74097699-fdcfd600-4ad4-11ea-939f-784dedc15921.png">
 
 5. Add global credentials
    -jenkins-> credentials ->jenkins-> global credentials-> add credentials
    <img width="1280" alt="Screen Shot 2020-02-09 at 1 12 26 AM" src="https://user-images.githubusercontent.com/59787273/74098071-5bfeb800-4ad9-11ea-8f48-1d1b9b34ea85.png">
    
 
 6. Configure slave jenkins
  - jenkins -> manage jenkins -> manage node -> new node-> Node name:jenkinsSlave
    <img width="1280" alt="Screen Shot 2020-02-09 at 12 59 52 AM" src="https://user-images.githubusercontent.com/59787273/74097915-851e4900-4ad7-11ea-8e32-59ac08f2fe64.png">
    
  
  
  
