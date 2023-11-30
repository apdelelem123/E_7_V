FROM RepthonArabic/apdelelem123:slim-buster

RUN git clone https://github.com/apdelelem123/PPF22.git /root/apdelelem123

WORKDIR /root/repthon

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/repthon/bin:$PATH"

CMD ["python3","-m","apdelelem123"]
