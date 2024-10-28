#!/bin/bash

kubectl -n mysql1 create secret generic mysql-secret \
  --from-literal=MYSQL_PASSWORD=$1
