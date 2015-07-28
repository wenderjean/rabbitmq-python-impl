# RabbitMQ Python Implementation

This is a python implementation of RabbitMQ lifecycle, this project was based in tutorial available
in RabbitMQ page with some improvements.

You'll find two directories:

``app/pure/``<br/>
``app/tasks/``

Files available in /pure directory implements just the message broadcast.
Files available in /tasks is a implementation using celery to manager tasks.

## Dependencies

``Python 2.7.3 (Available by box)``<br/>

## Running

``vagrant up``<br/>
``vagrant ssh producer``<br/>
``vagrant ssh rabbit``<br/>
``vagrant ssh consumer``<br/>

## Testing /pure

In 'producer' machine run:
``python send.py`

In 'consumer' machine run:
``python worker.py`

## Testing /tasks

In 'producer' machine run:
``python producer.py``

In 'consumer' machine run:
``celery -A tasks worker --loglevel=info``
