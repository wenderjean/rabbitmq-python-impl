from celery import Celery

app = Celery( 'tasks', broker='amqp://192.168.33.21' )

@app.task
def add(x, y):
  return x + y
