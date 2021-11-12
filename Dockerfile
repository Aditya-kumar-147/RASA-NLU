FROM ubuntu:20.04
ENTRYPOINT []
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --upgrade pip && pip install rasa==2.8.6
ADD . /app/
RUN chmod +x /app/start_services.sh
CMD /app/start_services.sh