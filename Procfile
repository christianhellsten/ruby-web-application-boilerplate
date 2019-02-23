dev: bundle exec rerun -- thin start --debug --port=$PORT -R config.ru
prod: bundle exec thin start -p $PORT -e $RACK_ENV --threaded
