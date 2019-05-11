#!/bin/bash

terraform output config_map_aws_auth > /opt/config_map_aws_auth.yaml
kubectl apply -f /opt/config_map_aws_auth.yaml
