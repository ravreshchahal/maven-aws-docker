FROM maven:3-amazoncorretto-16

LABEL maintainer="RADtech <info@radtechsoft.com>"

RUN amazon-linux-extras install docker
RUN yum update -y && yum install -y unzip groff
RUN curl --silent --show-error --fail "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

CMD [ "mvn" ]