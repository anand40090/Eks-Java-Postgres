### Eks-Java-Postgres
This project will have Eks using Java and Posgres SQL

### Contents
1. Create Ec2 instance for PostgreSQL [Install_Postgres](https://www.cherryservers.com/blog/how-to-install-and-setup-postgresql-server-on-ubuntu-20-04)
2. Create a Client Ec2 instance for Eksctl,KubeCtl


Default posgtes DB "postgres", User "postgres", Password "postgres"
- New DB created - CREATE DATABASE test_erp;

encode postgres password for EKS secret - 
admin1@ip-172-31-6-117:~/springboot-postgresql-docker-assignment$ echo -n "postgres" | base64
cG9zdGdyZXM=

![image](https://github.com/anand40090/Eks-Java-Postgres/assets/32446706/eb94ff3b-3389-473f-a1fe-a6eb64f761ff)

Decode the code using kubectl - 


admin1@ip-172-31-6-117:~/springboot-postgresql-docker-assignment$ kubectl get secret postgres-secret -o jsonpath="{.data.username}" | base64 --decode
postgresadmin1@ip-172-31-6-117:~/springboot-postgresql-docker-assignment$

![image](https://github.com/anand40090/Eks-Java-Postgres/assets/32446706/636acd50-5e67-47bf-97be-ba54a736e11a)
