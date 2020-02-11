
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

-
