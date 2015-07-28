#!/usr/bin/env python
import time
from base import get_connection

connection = get_connection()
channel = connection.channel()
channel.queue_declare(queue = 'hello')

print ' [*] Waiting for messages. To exit press CTRL + C'

def callback(ch, method, properties, body):
  print " [x] Received %r" % (body,)
  time.sleep( body.count('.') )
  print " [x] Done "

channel.basic_consume(callback, queue = 'hello',  no_ack = True)
channel.start_consuming()

