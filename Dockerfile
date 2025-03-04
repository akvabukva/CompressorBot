FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg -y

RUN pip3 install -U pip

RUN cd /

RUN git clone https://github.com/akvabukva/CompressorBot

RUN cd CompressorBot

WORKDIR/CompressorBot

RUN pip3 install -Ur requirements.txt

CMD python3 start.py



