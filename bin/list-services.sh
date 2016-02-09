#!/bin/bash

# Since the CLI does not take a cluster argument, we have run configure each time
ecs-cli configure \
        --region $AWS_REGION \
        --access-key $AWS_ACCESS_KEY_ID \
        --secret-key $AWS_SECRET_ACCESS_KEY \
        --cluster $AWS_CLUSTER 

# Lists all the containers in your cluster that belong to the service created with the compose project. 
ecs-cli compose \
        --verbose \
        --project-name aws-ecs-compose-experiment \
        service list
