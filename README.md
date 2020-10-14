# Grid Singularity Devops Challenge  

Your goals for this challenge:

1. Create an automation using Terraform or Cloudformation to provision one Linux VM in AWS capable to run docker containers and with the port 80 exposed to the internet.
2. Create a Dockerfile of a nginx container.
3. Createa  CI/CD pipeline using Travis/Github Actions/Jenkins to build and deploy the container in the Linux VM.
4. Create a README with all necessary steps in order to run your automation.

We would like to see your considerations for credentials handling in this scenario.  
The challenge is expected to take between 2-4 hours.  

In order to submit your solution a fork of this repo has to be created, and the solution can be committed to the fork.



To run the yml file inorder to provisiion EC2 linux instance and docker installation and keeping port 80 open to internet user 

1. either use this template in the aws stack 

or from aws command line we can run this command 
aws cloudformation create-stack --stackname task --template-body file://$PWD/linuxec2.yml --profile devops --reg eu-central-1

then you can verify the creations from the aws console 

For docker file execution 
 we can build our Dockerfile by running 
docker build -t simple-nginx

and  then we can run our image by using
 docker run --rm -it -p 8080:80 simple-nginx
