- Create a ec2 instance and name it as TOMCAT
- install tomcat on that instance using the command : sudo yum install tomcat
- open the tomcat.conf by typing the command : sudo vi /usr/share/tomcat/conf/tomcat.conf and paste
  JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx1026m -XX:MaxPermSize=256m -          XX:+UseConcMarkSweepGC"
  in the file to create the heap memory
  
  <img width="1036" alt="Screen Shot 2020-02-09 at 3 44 26 PM" src="https://user-images.githubusercontent.com/59787273/74110544-18e12b00-4b53-11ea-99a4-2d986266b260.png">


-   
