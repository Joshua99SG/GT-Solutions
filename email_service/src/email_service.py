import pandas as pd
import re
from flask import request
from flask import Flask
from datetime import datetime
from email.message import EmailMessage
import ssl
import smtplib
import time
import logging
import os

app = Flask(__name__)

#setup logger
def setupLogger():

    #get log file
    log_file = os.getenv("LOG_FILE", "service.logs")

    #setup logger
    logging.basicConfig(
        filename=log_file, 
        level=logging.INFO, 
        format="%(asctime)s - %(levelname)s - %(message)s"
    )

    #enable stream
    stream_handler = logging.StreamHandler()
    stream_handler.setLevel(logging.INFO)

    #addhandler to default logger
    logging.getLogger("").addHandler(stream_handler)

setupLogger()

@app.route('/email_service', methods=['POST'])
def send_email():
    request_data = request.get_json(force=True)
    logging.info(request_data)
    email_emisor = request_data['email_emisor']
    title = request_data['email_title']
    message = request_data['email_message']
    password_emisor = "ercrsieicmukqito"
    candidates = request_data['candidates']
    email_sends = 0
    for candidate in candidates:
        em = EmailMessage()
        em['from'] = email_emisor
        em['To'] = candidate['email']
        em['subject'] = title
        em.set_content(message)
        contexto = ssl.create_default_context()
        with smtplib.SMTP_SSL('smtp.gmail.com', 465, context=contexto) as smtp:
            # Login to the email account with the email sender's credentials
            smtp.login(email_emisor, password_emisor)
            # Send the email to the candidate
            smtp.sendmail(email_emisor, [candidate['email']], em.as_string())
            email_sends += 1
            if (email_sends % 75 == 0 and email_sends != 0):
                time.sleep(120)
            smtp.close()
        email_sends += 1
    return {"response": "Sent successfully"}


