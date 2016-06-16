#!/usr/bin/python

import smtplib

sender = 'from@fromdomain.com'
receivers = ['omar.amer@uconn.edu']
password = CSIlab123

message = """From: CSILABTEST <CSI@lab.test>
To: Omar <to@todomain.com>
Content-type: text/html
Subject: SMTP HTML e-mail test

%s

<b>This is HTML message.</b>
<h1>This is headline.</h1>
""" % (result)

try:
   smtpObj = smtplib.SMTP('localhost')
   smtpObj.sendmail(sender, receivers, message)         
   print "Successfully sent email"
except SMTPException:
   print "Error: unable to send email"