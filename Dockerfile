#PopNet Docker - May 15, 2024
FROM ubuntu:22.04
MAINTAINER Billy Law



RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential \
&& apt-get install -y zlib1g-dev \
&& apt-get install -y libncurses5-dev \
&& apt-get install -y libgdbm-dev \
&& apt-get install -y libnss3-dev \
&& apt-get install -y libssl-dev \
&& apt-get install -y libreadline-dev \
&& apt-get install -y libffi-dev wget
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

RUN pip install cycler \
&& pip install kiwisolver \
&& pip install matplotlib \
&& pip install mock \
&& pip install numexpr \
&& pip install numpy \
&& pip install pandas \
&& pip install pyparsing

RUN pip install pytz \
&& pip install python-dateutil \
&& pip install scikit-learn \
&& pip install scipy \
&& pip install setuptools \
&& pip install six \
&& pip install tables \
&& pip install wheel

RUN apt-get update -y\
&& apt-get upgrade -y \
&& apt-get install -y default-jre