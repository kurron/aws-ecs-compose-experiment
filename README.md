#Overview
This project is an experiment that runs the [Amazon ECS Command Line Interface](https://github.com/aws/amazon-ecs-cli/) 
to install workload into Amazon ECS.  This project uses the Docker Compose form to define workloads.

#Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation
* a working [Amazon ECS Command Line Interface](https://github.com/aws/amazon-ecs-cli/) installation
* a working [Amazon ECS Cluster](https://aws.amazon.com/ecs/)

#Building
This project is merely a collection of data files for ECS to consume to there isn't anything to build.

#Installation
Only the software described in the prerequisites is required.

##Environment Variables
The `ecs` commands expects certain variables to be specified in the environment:

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY
* AWS_REGION
* AWS_CLUSTER 

#Tips and Tricks

##Testing The Workload Locally
One benefit of using the `Docker Compose` descriptor is that you can test your workload locally before pushing it up 
to AWS.  Typing `docker-compose up -d` should install an Nginx container into your Docker engine. You should be able 
to hit `http://localhost:9876` with your browser to verify everything is working.  Once you are satisfied it worked
correcly, type `docker-compose stop` to remove the container.


#Troubleshooting

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

