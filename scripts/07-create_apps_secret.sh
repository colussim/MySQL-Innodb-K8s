#!/bin/bash

kubectl -n ecommerce create secret generic app-secret \
  --from-literal=MYSQL_PASSWORD=$1
