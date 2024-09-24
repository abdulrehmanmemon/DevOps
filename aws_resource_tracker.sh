#!/bin/bash

###########################
# Author: Abdul Rehman
# Date: 24/sep/2024

# version: v1
# This script will report the AWS resource usage

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# debug mode for a better understanding
set +x

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list aws lambda
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "Print list of IAM users"
aws iam list-users
