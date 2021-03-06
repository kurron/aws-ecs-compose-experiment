#!/bin/bash

# Since the CLI does not take a cluster argument, we have run configure each time
ecs-cli configure \
        --region $AWS_REGION \
        --access-key $AWS_ACCESS_KEY_ID \
        --secret-key $AWS_SECRET_ACCESS_KEY \
        --cluster $AWS_CLUSTER 

# Creates an ECS service from your compose file. The service is created with a desired 
# count of 0, so no containers are started by this command. 
ecs-cli compose \
        --verbose \
        --project-name aws-ecs-compose-experiment \
        service create
