#!/bin/bash

# Since the CLI does not take a cluster argument, we have run configure each time
ecs-cli configure \
        --region $AWS_REGION \
        --access-key $AWS_ACCESS_KEY_ID \
        --secret-key $AWS_SECRET_ACCESS_KEY \
        --cluster $AWS_CLUSTER 

# Scales the desired count of the service to the specified count.
ecs-cli compose \
        --verbose \
        --project-name aws-ecs-compose-experiment \
        service scale $1
