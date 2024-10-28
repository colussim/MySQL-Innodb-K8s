#!/bin/bash

kubectl -n ecommerce cecreate configmap app-config \
  --from-literal=MYSQL_HOST=10.89.0.100 \
  --from-literal=MYSQL_DATABASE=mydb \
  --from-literal=MYSQL_USER=app \
  --from-literal=MYSQL_PORT=6450
