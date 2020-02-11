
- create a folder and have all the following files in it- docker-compose.yml, DockerFile, index.html, nginx.conf, ReadMe.md, runner.sh
- build the DockerFile to create an image : sudo docker build -t myngnix .
 
 here "mynginx" is the name and -t is used to give any name to image and . says that the Dockerfile is present in the same folder. make sure that the file name is "DockerFile"
<img width="887" alt="Screen Shot 2020-02-10 at 11 39 47 PM" src="https://user-images.githubusercontent.com/59787273/74213411-b1180680-4c5e-11ea-8f72-ac1be7c0f209.png">
- check the images :sudo docker images
<img width="636" alt="Screen Shot 2020-02-10 at 11 43 35 PM" src="https://user-images.githubusercontent.com/59787273/74213511-300d3f00-4c5f-11ea-8e2f-843ecf153db6.png">

- run the image to create containers: sudo docker run -itd -p 80:80 myngnix
<img width="616" alt="Screen Shot 2020-02-10 at 11 48 19 PM" src="https://user-images.githubusercontent.com/59787273/74213675-ed983200-4c5f-11ea-834c-36a3cb065d39.png">

-check the container :sudo docker ps
<img width="1024" alt="Screen Shot 2020-02-10 at 11 50 45 PM" src="https://user-images.githubusercontent.com/59787273/74213755-3f40bc80-4c60-11ea-8b9a-c17183bf0de9.png">

- check if there is anything listening on port no 80: sudo netstat -tulnp | grep LISTEN
- give the instance ip:80 on browser
<img width="1280" alt="Screen Shot 2020-02-11 at 7 57 44 AM" src="https://user-images.githubusercontent.com/59787273/74243045-9e282500-4ca4-11ea-81b6-a7feb21194bc.png">

- to go to the container : sudo docker exec -it 4be0ce1be636 /bin/bash
- come out of container : exit
- stop and destroy the container : sudo docker stop 4be0ce1be636 && sudo docker rm 4be0ce1be636
<img width="761" alt="Screen Shot 2020-02-11 at 8 16 09 AM" src="https://user-images.githubusercontent.com/59787273/74244347-e5afb080-4ca6-11ea-9c93-80f0f2543c87.png">
- to do data persistant : sudo docker run -itd -p 80:80 --name mynginx -v /home/ec2-user/DEVOPS/Docker/VolumeMapping/index.html:/www/data/index.html myngnix
   
   here /home/ec2-user/DEVOPS/Docker/VolumeMapping/index.html is the local address of the file and /www/data/index.html is the container address. anything changes on container index.html will be saved in local index.html.
   -itd stands for interactive terminal daemon mode n -p is for port
   
- Another way to save the changes in the container is to make the container into images(is called snapshot) :   
