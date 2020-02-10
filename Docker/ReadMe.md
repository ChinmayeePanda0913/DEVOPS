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

- 
