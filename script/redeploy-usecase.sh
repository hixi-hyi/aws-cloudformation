#!/bin/bash
if [ -z "$1" ]; then
  echo "usage: $0 \${usecase}"
  exit 1
fi
usecase=$1
aws cloudformation delete-stack --stack-name ${usecase}
aws cloudformation wait stack-delete-complete --stack-name ${usecase}
aws cloudformation deploy --stack-name ${usecase} --template-file usecase/${usecase}.yaml
