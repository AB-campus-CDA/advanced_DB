# Docker Init SQL

use :

 - docker 
	 - php 8.1
	 - Apache debian:bullseye
	 - MySql 8.0 
	 

# Installation process

 - ### launch docker-compose
	>		docker-compose up --build
   
  - ### Connect to the apache container
  
	> 		docker exec -it docker_apache bash
	
  - ### Connect to the mysql container
  
	> 		docker exec -it docker_mysql bash
	

# Documentation

 - https://www.docker.com/
