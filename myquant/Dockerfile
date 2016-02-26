FROM darkmagician/python3

RUN apt-get -y install curl
RUN apt-get -y install unzip
RUN curl -O http://myquant.cn/downloads/sdk/python/gmsdk-2.7.0-py3-x64-linux.zip
RUN unzip gmsdk-2.7.0-py3-x64-linux.zip
RUN cd gmsdk-2.7.0-py3-x64-linux
RUN pip3 install gmsdk-2.7.0-py3-none-any.whl



