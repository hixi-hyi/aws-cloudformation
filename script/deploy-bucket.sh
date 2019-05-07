#!/bin/bash
aws cloudformation deploy --stack-name cfn-template-s3 --template-file setup/bucket.yaml
