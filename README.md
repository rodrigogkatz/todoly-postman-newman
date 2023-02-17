# API Testing [todo.ly](http://todo.ly)

This is a repository to run a postman collection directly from the command-line using node newman package and also to get the corresponding reports

[todo.ly](http://todo.ly) exposes its data via an Application Programming Interface (API). This document is the official reference for that functionality. This API is inspired by the Twitter API.

## The API is entirely HTTP-based
Methods to retrieve data from the this API require a GET request. Methods that submit, change, or destroy data require a POST. A DELETE request is also accepted for methods that destroy data. API Methods that require a particular HTTP method will return an error if you do not make your request with the correct method. HTTP Response Codes are meaningful.

## The API is a RESTful resource
REST (Representational State Transfer) is a programming concept in which you build your web application to only process basic CRUD (Create Read Update and Delete) operations. The API presently supports the following data formats: XML, JSON.

----

## Postman & Newman 
to use these tools i have installed and configured the following items

### GitHub repository
- prepared a github repository

### Node & packages
- i created a postman collection for users, projects & items
- i have also installed nodejs and created a project 
- initialized a project `npm init`
- installed newman and htmlextra packages using `npm install newman` & `npm install newman-reporter-htmlextra`
- exported the corresponding postman collection and its variables
- configured the package.json file to have the proper commands to run the tests
- verified that they run

### Docker
- create a [docker hub](https://hub.docker.com) account
- installed docker to run those tests inside an ubuntu image
- created docker file inside project
COPY . . inserts code files inside the container
- run the following command to build an image `docker build . -t todoly-postman-newman`, where the . means to look for the dockerfile inside the project directory tree, the -t means tag, and newmandocker is the name of the image
- check on docker app for the new image called `todoly-postman-newman` or run `docker images` on the console, if the new created image is there, run the following command to run the image `docker run todoly-postman-newman`
- once it is tested and we know it is working we proceed to create the .dockerignore file to add `/node_modules` to be ignored
- once the previous steps are complete we can proceed to delete the created iamge, uncomment what's commented and run the commands to build and to run the image again
- file should be something like 

```
FROM node
COPY . .
RUN npm install
VOLUME /reports
CMD [ "npm", "run". "test:json" ]
```

### Github actions

