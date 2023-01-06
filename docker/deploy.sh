export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
gunicorn -k flask_sockets.worker -b 0.0.0.0:8000 app:app