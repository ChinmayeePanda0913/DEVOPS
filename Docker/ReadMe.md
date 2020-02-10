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
    ->docker cloud details
