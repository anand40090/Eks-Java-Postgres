### Eks-Java-Postgres
This project will have Eks using Java and Posgres SQL

### Contents
1. Create EC2 Instance with the required applications
   - AWS_CLI; EKSCTL; KUBECTL; DockerEngine; Git; OpenJdk; Maven
   - Follow the link to install prerqusites mentioned above [Readiness](https://sunitabachhav2007.hashnode.dev/jenkins-cicd-with-amazon-eks)
1. Configure AWS user in the created Ec2 Instance
2. Create the EKS cluster using EKSCTL command. Eg -
   ```
   eksctl create cluster --name DC \
   --node-type t2.medium \
   --nodes 2 \
   --nodes-min 2 \
   --nodes-max 3 \
   --region ap-south-1 \
   --zones=ap-south-1a,ap-south-1b \
   --authenticator-role-arn=arn:aws:iam::XXXXXX:instance-profile/SSM-FullAccess \
   --auto-kubeconfig \
   --asg-access \
   --external-dns-access \
   --appmesh-access \
   --alb-ingress-access
   ```
1. Clone this reposiroty 
1. Built the project using "mvn clean package", it will create a jar file under target folder.
1. Create Docker Image for Springboot application run "docker image build -t <give_name> .", check [Dockerfile](https://github.com/anand40090/Eks-Java-Postgres/blob/master/Dockerfile)
1. Once the above steps are done follow the sequence to create end to end application on EKS cluster - 
- Create deployment of the postgreSQL application on EKS using command "kubectl app", check the [postgres-deployment.yaml](https://github.com/anand40090/Eks-Java-Postgres/blob/master/postgres-deployment.yaml)
- Create load balancer service for the springboot application using command "kubectl apply -f springboot-service.yml", check the [postgres-service.yaml
](https://github.com/anand40090/Eks-Java-Postgres/blob/master/postgres-service.yaml)
  

   
