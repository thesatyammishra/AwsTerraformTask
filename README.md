Steps to run the scripts.

Step-1 (It will create vpc , private subnets)

    1- cd awsterraformtask/terraform/Networking
    2- terraform init
    3- terraform apply

Step-2 (It will create RDS with all its dependencies)    

    1- cd awsterraformtask/terraform/rds
    2- terraform init
    3- terraform apply

Step-3 (It will update the .env file with new database credentials)

    1- cd awsterraformtask/app
    2- sh updateEnvfile.sh

Step-4 (It will create the ecr repository on aws)

    1- cd awsterraformtask/terraform/ecr
    2- terraform init
    3- terraform apply

Step-4 (It will build the dockerfile and push the image to repository)\

1- cd awsterraformtask/app
2- docker build -t nodeapp .
3- aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
4- docker tag e9ae3c220b23 aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag
5- docker push aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag

Step-5 (It will create ecs)

    1- cd awsterraformtask/terraform/ecs
    2- terraform init
    3- terraform apply

    