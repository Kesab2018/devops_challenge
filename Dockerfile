FROM Linux:latest

RUN sudo yum update
RUN sudo yum install nginx
RUN sudo nginx -v

EXPOSE 80

CMD[nginx]
