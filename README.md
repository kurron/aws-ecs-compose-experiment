#Overview
This project is an experiment that runs the [Amazon ECS Command Line Interface](https://github.com/aws/amazon-ecs-cli/) 
to install workloads into Amazon ECS.  This project uses the Docker Compose form to define workloads.

#Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation
* a working [Amazon ECS Command Line Interface](https://github.com/aws/amazon-ecs-cli/) installation
* a working [Amazon ECS Cluster](https://aws.amazon.com/ecs/)

#Building
This project is merely a collection of data files for ECS so consume to there isn't anything to build.

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

##Deploying to AWS
Once you have verified that the Docker Compose file works locally, you can try and push your workload into the cloud. 
There is a convenience script that simplifies the operation.  Simply run `bin/install-service.sh` and your workload 
should be deployed.  You can check your AWS console to verify that the service was successfully installed and running. 
As before, you should be able to use your browser to hit the Nginx endpoint in the cloud.

##Listing Services
Once you have deployed workloads to AWS, you can run `bin/list-services.sh` to get a listing of the currently running containers.

##Scaling Services
If you want to increase the number of instances of your container run `bin/scale-service.sh 3` and it will increase the desired 
count from 1 to 3.  Within moments, you should have 3 instances of Nginx running in your cluster.

##Stopping Services
Use the `bin/stop-service.sh` script to shutdown all running instances of your service.  The service definition will remain in 
ECS and can be scaled up at a later date.

##Removing Services
Use `bin/remove-service.sh` to spindown all running instances and then destroy the service definition.  This operation cannot 
be undone.

##Installing Services
Running `bin/create-service.sh` will install your services into ECS but will not start them.

##Starting Services
Running `bin/start-service.sh` will start a single instance of a previously installed service.

#Troubleshooting

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

