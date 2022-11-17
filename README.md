# Betaque Devops Test Task

## Infrastructure Code



## Introduction

Thank you for applying for the Devops role at Betaque! This exercise aims to assess the technical skills required to succeed as an Devops at Betaque and we encourage you to develop the solution the way you think it’s best.

The assignment described below is part of the selection process and approval is required to move to the next stage.

This exercise is designed to take no more than 3-4 hours to complete. Good luck!

## Exercise

In this scenario you are the Devops assigned to one of the product teams. This team wants to deploy a new application and expose it to the internet, however they don’t have the required knowledge to do so and you are tasked with helping them.

The web application code is available on the Gitlab repo that has been shared with you. 

This application requires a database and HTTP traffic to be routed to it.

Currently the only infrastructure available is a Virtual Private Cloud (VPC) with private and public subnets and an ECR repository. These are defined as Terraform resources in the application repository.

You are asked to:

1. Package the application following best practices.
2. Create the infrastructure using Terraform required to:
    1. Run the application
    2. Setup connection between application and the database
    3. Expose the application to the internet
3. Propose an action plan to secure the traffic between the application and the database.
4. Traffic is expected to increase a great deal in the upcoming months when the application is launched. Propose a process to handle this in a way that the product team can manage it without your input.

## Notes

Basic infrastructure code should be in `./terraform` directory.<br>

`./app` contains the source code of <b>TODO Application</b> and it's Dockerfile.
It's a basic TODO application which creates the TODO list and stores the task in MySQL database.
For connectivity to database it need some environment variables which are defined in `./app/.env`.

## Deliverables

Send the zip of the repository via email.

Send an email to [hr@betaque.com](mailto:hr@betaque.com) when you finish the task and it’s ready for review.

You have one week to work on this exercise, all the code and any other materials you used to build the solution should be pushed to the repo for evaluation.
