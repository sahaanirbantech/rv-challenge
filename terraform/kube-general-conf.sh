#!/bin/bash

terraform output storage_class_custom_gp2 > /opt/storage_class_custom_gp2.yaml
terraform output kubeconfig > /opt/kubeconfig
terraform output albingcontroller > /opt/albingcontroller.yaml
terraform output alb_ing_rbac > /opt/alb_ing_rbac.yaml

export KUBECONFIG=$KUBECONFIG:/opt/kubeconfig

kubectl delete sc/gp2
kubectl apply -f /opt/storage_class_custom_gp2.yaml
kubectl patch storageclass gp2 -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
