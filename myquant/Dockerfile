FROM darkmagician/python3

RUN apt-get update
RUN apt-get -y install zlib1g-dev
RUN apt-get -y install libjpeg-dev
RUN apt-get -y install tesseract-ocr
RUN apt-get -y install tesseract-ocr-eng
RUN apt-get clean

RUN pip3 install Pillow
RUN pip3 install pytesseract
RUN pip3 install sqlalchemy

RUN wget http://myquant.cn/downloads/sdk/python/gmsdk-2.7.0-py3-x64-linux.zip
RUN unzip gmsdk-2.7.0-py3-x64-linux.zip
RUN pip3 install /gmsdk-2.7.0-py3-x64-linux/gmsdk-2.7.0-py3-none-any.whl
RUN rm /gmsdk-2.7.0-py3-x64-linux.zip

RUN echo "export PYTHONIOENCODING=UTF-8;" >> /home/admin/.profile
RUN echo "TZ='Asia/Shanghai'; export TZ;" >> /home/admin/.profile
RUN echo "TESSDATA_PREFIX='/usr/share/tesseract-ocr/tessdata'; export TESSDATA_PREFIX;" >> /home/admin/.profile








