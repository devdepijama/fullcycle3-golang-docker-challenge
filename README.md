# Solution for FullCycle 3.0 docker challenge (golang)

The goal of this repository is to provide a solution to the following challenge:

"Create a docker image with less than 2MB in size that runs a binary built with golang that prints out **Code.education rocks!**"

# How to run it

docker run **hugobp/fullcycle-docker-golang-challenge**

# Asserting image size

To make sure the image is less than 2MB in size, do the following:

```
docker images | grep hugobp/fullcycle-docker-golang-challenge
```

# How to build it from Dockerfile

Building the image:
```
docker build . -t go-multistage 
```

Running it:
```
docker run --rm go-multistage
```
