FROM selenium/standalone-chrome:latest

RUN apt-get -qqy update \
  && apt-get -qqy --no-install-recommends install \
    python3 \
    python3-pip \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
RUN pip3 --no-cache-dir install --upgrade \
    selenium \
    bs4 \
    html5lib==1.0b8
    
EXPOSE 8080