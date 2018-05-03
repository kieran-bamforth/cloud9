#!/bin/bash
aws cloudformation describe-stacks --stack-name cloud9 \
    | jq  '.Stacks[].Outputs[] | { cloud9: { hosts: [.OutputValue] } }'
