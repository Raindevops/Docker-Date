# Docker Date :calendar:

## How does it work :eyeglasses:

The date.sh script generate and index.html file which update the date each second

The Dockerfile execute the shell on docker run in an Apache2 web server

## Docker

**Build the image :** :hammer:

    docker build -t dockerdate . 

**Run the application** :train2:
   
    docker run --rm -d -it -p 80:80 dockerdate