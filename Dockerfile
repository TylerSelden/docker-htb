FROM jasonchaffee/kali-linux

# Install necessary packages

RUN apt update -y && apt install openvpn -y

WORKDIR /root/

COPY ./app /root/app

CMD /root/app/entrypoint.sh
