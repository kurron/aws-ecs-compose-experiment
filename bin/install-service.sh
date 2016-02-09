#!/bin/bash

# Since the CLI does not take a cluster argument, we have run configure each time
/usr/local/bin/ecs-cli --region $AWS_REGION --access-key $AWS_ACCESS_KEY_ID --secret-key $AWS_SECRET_ACCESS_KEY --cluster $AWS_CLUSTER 

# Creates an ECS service from your compose file (if it does not already exist) and runs one instance of that task on your 
# cluster (a combination of create and start). This command updates the desired count of the service to 1. 
/usr/local/bin/ecs-cli compose --verbose --project-name aws-ecs-compose-experiment service up
