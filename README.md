# RabbitMQ Python Implementation

This is a python implementation of RabbitMQ lifecycle, faking a distributed environment talking one each other by
messages, this project was based in tutorial available in RabbitMQ page as well as Celery documentation.

You'll find two directories:

``app/pure/``<br/>
``app/tasks/``

Files available in /pure directory implements just the message broadcast.<br/>
:x
:x

## Dependencies

``Python 2.7.3 (Available by box)``<br/>

## Running

``vagrant up``<br/>
``vagrant ssh producer``<br/>
``vagrant ssh rabbit``<br/>
``vagrant ssh consumer``<br/>
``vagrant ssh redis``<br/>

## Testing /pure

In 'producer' machine run:
``python send.py`

In 'consumer' machine run:
``python worker.py`

## Testing /tasks

In 'producer' machine run:
``python producer.py``

In 'consumer' machine run:
``sh start.sh`` OR ``celery -A tasks worker --loglevel=info``
