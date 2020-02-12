- create a docker-compose.yml file to create multiple images those are connected to each other.
- run the docker-compose: sudo docker-compose up -d

(if it gives error:command not found - you have to run : sudo `which docker-compose` up -d)
it will give the latest version of the docker-compose file with the path

<img width="885" alt="Screen Shot 2020-02-11 at 11 48 52 PM" src="https://user-images.githubusercontent.com/59787273/74306821-3bc53800-4d29-11ea-894b-059610bfe927.png">

- to check the containers : sudo docker-compose logs
<img width="1280" alt="Screen Shot 2020-02-11 at 11 57 07 PM" src="https://user-images.githubusercontent.com/59787273/74307379-b93d7800-4d2a-11ea-9111-07aac5ec9b2c.png">
- to stop and remove the docker-compose command is :sudo `which docker-compose` down
