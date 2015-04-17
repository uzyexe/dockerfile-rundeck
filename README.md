# uzyexe/rundeck

Run the Rundeck server monitor daemon.

## Dockerfile

[**Trusted Build**](https://registry.hub.docker.com/u/uzyexe/rundeck/)

This Docker image is based on the official [java:7](https://registry.hub.docker.com/_/java/) base image.

## Using

### docker run


    docker run -d --name="rundeck" -p 4440:4440 -p 4443:4443 -e="RUNDECK_URL=http://yourservername:4440" uzyexe/rundeck

--

## Rundeck

[Getting started](http://rundeck.org/tour.html)

[Release Notes](https://github.com/rundeck/rundeck/blob/master/RELEASE.md)

