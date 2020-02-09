- Create a ec2 instance and name it as TOMCAT
- install tomcat on that instance using the command : sudo yum install tomcat
- open the tomcat.conf by typing the command : sudo vi /usr/share/tomcat/conf/tomcat.conf and paste
  JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx1026m -XX:MaxPermSize=256m -          XX:+UseConcMarkSweepGC"
  in the file to create the heap memory
  
  <img width="1036" alt="Screen Shot 2020-02-09 at 3 44 26 PM" src="https://user-images.githubusercontent.com/59787273/74110544-18e12b00-4b53-11ea-99a4-2d986266b260.png">

- install tomcat webapp and admin webapp by using the command: sudo yum install  tomcat-webapps tomcat-admin-webapps
<img width="1035" alt="Screen Shot 2020-02-09 at 3 47 52 PM" src="https://user-images.githubusercontent.com/59787273/74110604-92791900-4b53-11ea-9e37-efd42029b4fd.png">

- type the following command : sudo yum install tomcat-docs-webapp tomcat-javadoc
<img width="1041" alt="Screen Shot 2020-02-09 at 3 51 19 PM" src="https://user-images.githubusercontent.com/59787273/74110666-0d423400-4b54-11ea-8495-3ccda3f3fdab.png">

- to set the tomacat user: sudo vi /usr/share/tomcat/conf/tomcat-users.xml
<tomcat-users>
	<user username="admin" password="password" roles="manager-gui,admin-gui"/>
  
  <img width="1032" alt="Screen Shot 2020-02-09 at 3 58 13 PM" src="https://user-images.githubusercontent.com/59787273/74110788-0b2ca500-4b55-11ea-9ea2-d10ae6fc6c7c.png">
  
- start the tomact :sudo systemctl start tomcat 

<img width="1026" alt="Screen Shot 2020-02-09 at 4 00 54 PM" src="https://user-images.githubusercontent.com/59787273/74110859-8ee69180-4b55-11ea-8b14-97e33d80589a.png">

- to check on which port it is running the command is : sudo netstat -tulnp | grep LISTEN

<img width="711" alt="Screen Shot 2020-02-09 at 4 01 57 PM" src="https://user-images.githubusercontent.com/59787273/74110867-9b6aea00-4b55-11ea-9160-45c0071c9523.png">

- to connect the port command is : wget localhost:8080
<img width="1035" alt="Screen Shot 2020-02-09 at 4 04 57 PM" src="https://user-images.githubusercontent.com/59787273/74110920-159b6e80-4b56-11ea-8357-46d4b14aedc3.png">

- to check on browser type: <public ip of tomcat>:8080
  <img width="1280" alt="Screen Shot 2020-02-09 at 4 07 42 PM" src="https://user-images.githubusercontent.com/59787273/74110961-6f9c3400-4b56-11ea-88f8-f87bcd4ae46f.png">

- to copy one file from current machine to remote machine command is: 
	-rsync "<"file name">" "<"remote machine">":folder path
	-scp "<"file name">" "<"remote machine">":folder path
	-ex: rsync gameoflife.war ec2-user@18.189.22.76:/usr/share/tomcat/webapps
	
	

