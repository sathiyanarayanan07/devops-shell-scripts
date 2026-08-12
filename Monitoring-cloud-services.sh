#!/bin/bash
 
set -x

# list s3 buckets
echo "s3 list"
aws s3 ls

# list Ec2 instance
echo " print list ec2 "
aws ec2 describe-instances

# list lambda
echo " print list of lambda "
aws lambda list-functions

# list Iam users
echo " print list iam users"
aws iam list-users
