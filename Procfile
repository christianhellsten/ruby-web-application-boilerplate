dev: bundle exec shotgun --server=thin --port=$PORT config.ru
web: bundle exec thin start -p $PORT -e $RACK_ENV --threaded
