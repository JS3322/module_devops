FROM mysql:5.7

#setting image environment variables
ENV MYSQL_USER mysql_user
ENV MYSQL_PASSWORD mysql_password
ENV MYSQL_ROOT_PASSWORD mysql_root_password
ENV MYSQL_DATABASE visitlog

#move the pre-written scripts to the folder where the script is executed when the container is created in the Docker environment.
COPY ./scripts/ /docker-entrypoint-initdb.d/


#image build command(in the same directory as the file)
#docker build -t [IMAGE_NAME] .

#run command (write log to terminal)
#docker run --name [CONTAINER_NAME] -it -p 3306:3306 [IMAGE_NAME]

#run command (run daemon)
#docker run --name [CONTAINER_NAME] -p 3306:3306 -d [IMAGE_NAME]

#docker log view 
#docker logs -f [CONTAINER_NAME]