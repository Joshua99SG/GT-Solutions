#set python
FROM python:3.10-slim

#set working directory
WORKDIR /service/email_service

#install script dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

#copy resources
COPY src/ .

#log file
ENV LOG_FILE /service/email_service/service.logs

#expose port
EXPOSE 49152

CMD ["python", "./waitress_server.py"]