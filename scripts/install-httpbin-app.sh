#!/bin/bash

# Install httpbin
helm upgrade --install httpbin httpbin \
    --repo  https://matheusfm.dev/charts \
    --namespace httpbin --create-namespace \
    --set ingress.enabled=true \
    --set ingress.className="nginx" \
    --set ingress.hosts[0].host="httpbin.skylark.demo.naviteq.io" \
    --set ingress.hosts[0].paths[0].path="/" \
    --set ingress.hosts[0].paths[0].pathType="ImplementationSpecific"

