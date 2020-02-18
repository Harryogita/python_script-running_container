#Here we create a simple dockerfile to spin up a ubuntu container , under which we copied our script from host-OS to /etc(inside container)
#and then run that script , which result expacted output over console of container or redirected to your hostOS console as per your requirement :

FROM ubuntu:latest
RUN apt update -y
RUN apt-get install python3 -y
WORKDIR /etc
COPY . /etc
CMD ["python3", "pythonscript.py"]
