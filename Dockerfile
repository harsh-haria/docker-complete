FROM node

#this command below specifies where we are working currently. so if you run npm install then it will get executed in the folder below.
WORKDIR /app

#copy is used to copy the files inside the image
#there are two arguments in the statement below.
#first argument speicies where the files are that need to go inside the image. '.' means files in the same level as this docker file
#second argument specifies where the files need to go inside the image. '.' means the root of the image. it is a good practice to create a folder and copy the files inside that folder
COPY . /app

#this command below is used to run any commands that you would run in the terminal.
#so if you run npm install then it will get executed in the folder /app.
RUN npm install

#this command below is used to expose the port that the container will be listening on.
EXPOSE 80

#RUN VS CMD
#RUN is executed when the image is being built.
#CMD is executed when the container is being run.
#if we write RUN node server.js then it will run the server.js file when the image is being built. That would be wrong.
CMD ["node", "server.js"]