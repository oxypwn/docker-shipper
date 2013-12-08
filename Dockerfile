FROM stackbrew/ubuntu

MAINTAINER Paul Andrew Liljenberg "letters@paulnotcom.se"

RUN apt-get -y update
RUN DEBIAN_FRONTED=noninteractive apt-get -y install git gcc python python-setuptools python-dev
RUN git clone https://github.com/mailgun/shipper.git
RUN cd /shipper && python setup.py install
ADD hello.py /example/
