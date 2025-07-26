#!/bin/bash


####################################
# Author : Yash
# Date : 26/7/25

# This script will report aws resource usage
###################################

# this script will report the below services
# 1) AWS S3
# 2) AWS EC2
# 3) AWS Lamda
# 4) AWS IAM Users


#list aws s3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> resourceTracker

#list aws ec2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

#list aws lambda
echo "Print list of Lambda Functions"
aws lambda list-functions >> resourceTracker

#list aws iam  users
echo "Print list of IAM Users"
aws iam list-users >> resourceTracker
