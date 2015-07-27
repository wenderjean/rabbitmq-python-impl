#!/usr/bin/env python
import pika

connection = pika.BlockingConnection(
        pika.ConnectionParameters('192.168.33.21')
        )
channel = connection.channel()
channel.queue_declare(queue = 'hello')

for x in range(5):
  channel.basic_publish(
        exchange = '',
        routing_key = 'hello',
        body = "Hello World {0}!".format(x)
        )
  print ' [x] Sent \'Hello World!\''

connection.close()
