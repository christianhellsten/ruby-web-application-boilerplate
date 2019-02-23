# Ruby+Roda Boilerplate

This Ruby web application is built using the following technologies:

- Ruby
- Roda
- Docker (deployment)

Use it as a starter kit for your web applications and or REST APIs.

## Running the application with Docker

### Development

$ docker build -t roda-boilerplate-dev .
$ docker run -v $(pwd):/app -p 80:3000 roda-boilerplate-dev

### Production

$ docker build -f Dockerfile.prod -t roda-boilerplate .
$ docker run -p 80:3000 roda-boilerplate

## Running the application without Docker

```
$ brew install ruby
$ gem install foreman
$ bundle
$ PORT=3000 RACK_ENV=development foreman start web
```

## Documentation

http://roda.jeremyevans.net/
https://picnicss.com/
