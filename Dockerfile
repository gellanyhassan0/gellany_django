#Deriving the latest base image
FROM python:latest

#LABEL Maintainer="gellanyhassan0"

WORKDIR /home

#COPY gellany_tools.py ./
#COPY requirements.txt ./

RUN apt-get update
RUN apt-get install git
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip install --upgrade pip 

RUN git clone https://github.com/gellanyhassan0/gellany_django.git ./

RUN pip install -r ./requirements.txt
#CMD [ "python3", "./manage.py", runserver", "0.0.0.0:8000"]

CMD python3 -c "import signal; signal.pause()"
