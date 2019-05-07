#!/bin/bash
bucket=$(aws cloudformation list-exports | jq -r '.Exports | map(select(.Name=="cfn-template-s3:BucketName")) | .[0].Value')
aws s3 sync ./piece/ s3://${bucket}/piece/
