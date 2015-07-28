import pika

def get_connection():
  return pika.BlockingConnection(pika.ConnectionParameters('192.168.33.21'))

