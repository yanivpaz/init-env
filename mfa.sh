#!/bin/sh
usage : mfa.sh <MFA_SERIAL> <TOKEN> 
MFA_SERIAL - get from IAM console under user security 
TOKEN - the MFA token 

example : mfa.sh  arn:aws:iam::123456789:mfa/yanivpaz 123456

MFA_SERIAL=$1
MFA_TOKEN=$2

aws sts get-session-token --serial-number  $MFA_SERIAL  --token-code $MFA_TOKEN >myfile
export AWS_ACCESS_KEY_ID=$(cat myfile | jq .Credentials.AccessKeyId |tr -d '"')
export AWS_SECRET_ACCESS_KEY=$(cat myfile | jq .Credentials.SecretAccessKey  |tr -d '"')
export AWS_SESSION_TOKEN=$(cat myfile | jq .Credentials.SessionToken  |tr -d '"' )
rm myfile 

