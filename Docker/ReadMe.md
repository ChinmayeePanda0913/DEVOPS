- install docker on ec2 instance: sudo yum install docker
- open the docker file to add docker options : sudo vim /etc/sysconfig/docker
- then add the following after options :OPTIONS="-H tcp://172.31.41.183:2376 -H unix:///var/run/docker.sock".
  here tcp://172.31.41.183 is the private ip of the instance
<img width="728" alt="Screen Shot 2020-02-10 at 3 12 16 PM" src="https://user-images.githubusercontent.com/59787273/74190395-e9482680-4c17-11ea-82b6-16b628345c49.png">

- to start the docker: sudo service docker start
- to check the status : sudo service docker status
- to see the docker options: ps -ef | grep docker
<img width="721" alt="Screen Shot 2020-02-10 at 3 19 16 PM" src="https://user-images.githubusercontent.com/59787273/74190917-bc484380-4c18-11ea-8ade-8663021b0865.png">
- to check the installation : sudo docker run hello-world
<img width="666" alt="Screen Shot 2020-02-10 at 3 21 45 PM" src="https://user-images.githubusercontent.com/59787273/74191441-2fea5080-4c19-11ea-9a03-5c5b5a87e30c.png">
- to check the images : sudo docker images
<img width="718" alt="Screen Shot 2020-02-10 at 3 23 42 PM" src="https://user-images.githubusercontent.com/59787273/74191520-632cdf80-4c19-11ea-9dcb-92697b4b4ae4.png">

- pull one image from dockerhub : sudo docker pull jenkinsci/slave
<img width="628" alt="Screen Shot 2020-02-10 at 3 28 13 PM" src="https://user-images.githubusercontent.com/59787273/74191921-27dee080-4c1a-11ea-96fb-bd6b33cc95a6.png">

- go to the jenkins on the browser: type ip of the jenkins:8080
- go to jenkins-> manage jenkins -> manage plugins
<img width="1280" alt="Screen Shot 2020-02-10 at 3 35 21 PM" src="https://user-images.githubusercontent.com/59787273/74192341-f87ca380-4c1a-11ea-8422-66c3f6bdd54f.png">
    ->available-> type "docker" on search bar -> check docker
<img width="1280" alt="Screen Shot 2020-02-10 at 3 38 51 PM" src="https://user-images.githubusercontent.com/59787273/74192652-8c4e6f80-4c1b-11ea-8dd5-368532aa807c.png">
    -> click on "install without restart"
<img width="1280" alt="Screen Shot 2020-02-10 at 3 41 34 PM" src="https://user-images.githubusercontent.com/59787273/74192806-de8f9080-4c1b-11ea-8d9c-41b6688edb0f.png">

- goto jenkins -> manage jenkins -> configure system ->down the page you will find "cloud"-> add new cloud-> docker
<img width="1280" alt="Screen Shot 2020-02-10 at 3 46 05 PM" src="https://user-images.githubusercontent.com/59787273/74193223-9de44700-4c1c-11ea-857e-d1a002a1c36f.png">
    ->docker cloud details -> now go to terminal and type : ps -ef | grep docker ->copy the "tcp:" part
    <img width="859" alt="Screen Shot 2020-02-10 at 3 51 39 PM" src="https://user-images.githubusercontent.com/59787273/74193704-7772db80-4c1d-11ea-8424-51fbdc3d2a08.png">
    -> paste it on Docker Host URI -> click on "Test Connection" to check the connection and fill as following
    
<img width="1280" alt="Screen Shot 2020-02-10 at 3 56 37 PM" src="https://user-images.githubusercontent.com/59787273/74194418-d38a2f80-4c1e-11ea-8fd8-baba37824824.png">
<img width="872" alt="Screen Shot 2020-02-10 at 3 58 11 PM" src="https://user-images.githubusercontent.com/59787273/74194427-d8e77a00-4c1e-11ea-97f8-5d4deab31e92.png">
<img width="1280" alt="Screen Shot 2020-02-10 at 4 00 33 PM" src="https://user-images.githubusercontent.com/59787273/74194435-db49d400-4c1e-11ea-821e-97f0c393f2c5.png">
<img width="1280" alt="Screen Shot 2020-02-10 at 4 02 22 PM" src="https://user-images.githubusercontent.com/59787273/74194444-df75f180-4c1e-11ea-9501-feeddd0076e1.png">

- now go to project -> click on the project ->configuration -> restrict the project to run on jenkins slave
<img width="1280" alt="Screen Shot 2020-02-10 at 4 06 54 PM" src="https://user-images.githubusercontent.com/59787273/74194751-8490ca00-4c1f-11ea-8dc9-ac046fc27e4d.png">
     -> save
-  build the project
<img width="1280" alt="Screen Shot 2020-02-10 at 4 12 26 PM" src="https://user-images.githubusercontent.com/59787273/74195158-434cea00-4c20-11ea-9c11-dda2440490ee.png">

