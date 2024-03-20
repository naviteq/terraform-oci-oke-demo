#!/bin/bash

# Install Kubernetes Metrics Server
helm upgrade --install metrics-server metrics-server \
    --repo https://kubernetes-sigs.github.io/metrics-server/ \
    --namespace kube-system

# Install kube-prometheus-stack
helm upgrade --install kube-prometheus-stack kube-prometheus-stack \
    --repo https://prometheus-community.github.io/helm-charts \
    --namespace monitoring --create-namespace

# Install ingress-nginx
helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace \
   --set controller.service.annotations.service\\.beta\\.kubernetes\\.io/oci-load-balancer-shape=flexible \
   --set controller.service.annotations.service\\.beta\\.kubernetes\\.io/oci-load-balancer-shape-flex-min=10 \
   --set controller.service.annotations.service\\.beta\\.kubernetes\\.io/oci-load-balancer-shape-flex-max=50
