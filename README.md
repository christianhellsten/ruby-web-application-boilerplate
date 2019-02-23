# Ruby+Roda Boilerplate

This Ruby web application is built using the following technologies:

- Ruby
- Roda (web framework)
- Docker (deployment)
- Picnic CSS (CSS framework)
- Capybara (acceptance testing)

Use it as a starter kit for your web applications and or REST APIs.

## Screenshots

**Desktop**
![Desktop](https://raw.githubusercontent.com/christianhellsten/ruby-web-application-boilerplate/master/screenshot-1.png)

**Mobile**
![Mobile](https://raw.githubusercontent.com/christianhellsten/ruby-web-application-boilerplate/master/screenshot-2.png)

## Running the application with Docker

### Development

```bash
$ docker build -t roda-boilerplate-dev .
$ docker run -v $(pwd):/app -p 80:3000 roda-boilerplate-dev
```

### Production

```bash
$ docker build -f Dockerfile.prod -t roda-boilerplate .
$ docker run -p 80:3000 roda-boilerplate
```

## Running the application without Docker

```bash
$ brew install ruby
$ gem install foreman
$ bundle
$ PORT=3000 RACK_ENV=development foreman start web
```

## Documentation

- http://roda.jeremyevans.net/
- https://picnicss.com/
