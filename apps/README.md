# Deployment of a simple e-commerce application

Deploying an e-commerce application based on [**ecommerce-platform**](https://github.com/just-a-rookie-2001/ecommerce-platform). This project aims to adapt and deploy an already existing application designed to work with a MySQL InnoDB cluster.

We will configure and customize the deployment of this application to integrate it into our infrastructure. 

This document will guide you through the deployment process, the necessary configurations, and all the steps to ensure optimal functioning of the application.

![app.png](../imgs/app.png)

## Prerequisites

Before deploying **ecommerce-platform**, ensure that you have the following prerequisites:
- A Kubernetes cluster set up and running with loadbalancer service
- A MySQL Innodb cluster installed and configured in kubernetes cluster
- MySQL client

## Steps

✅ **Step1 :** Create a sample database (mydb) and load data

Run this command:
```bash

:> mysql -u root -h 10.89.0.100 -p < Database/DB_SCRIPT.sql
:>
```

✅ **Step2 :** Create a new user for database mydb

Run this command:
```bash

:> mysql -u root -h 10.89.0.100 -p < Database/create_user.sql
:>
```
This sql script creates an app user with a password , modify this script to change the user name and password.


✅ **Step3 :** Test connexion with new user and database access 

Run this command:
```bash

:> mysql -u app -h 10.89.0.100 -p mydb -e "SHOW TABLES;"

+-------------------+
| Tables_in_mydb    |
+-------------------+
| address           |
| buyer             |
| buyerorder        |
| order_has_product |
| orderreturns      |
| payment           |
| product           |
| review            |
| shoppingcart      |
| supplier          |
| user              |
| user_log          |
| wishlist          |
+-------------------+
:>
```
This sql script creates an app user with a password , modify this script to change the user name and password.

We previously created a Docker image of this application, making some modifications to the code to enable it to connect to our MySQL InnoDB cluster on different ports.

We will now see how to deploy it in our Kubernetes cluster:

[Next]((https://github.com/colussim/MySQL-Innodb-K8s/#step8))


* * *

## References

 [ecommerce-platform](https://github.com/just-a-rookie-2001/ecommerce-platform)
