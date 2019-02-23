FROM ruby:2.6.1

ENV APP_HOME /app

# create non privileged user, set ownership, and change user
RUN addgroup ruby && adduser --disabled-password --gecos '' --home $APP_HOME --ingroup ruby ruby && chown -R ruby:ruby $APP_HOME

RUN apt-get update -qq && apt-get install -y build-essential

# foreman is used to start the application
RUN gem install foreman

WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/

RUN bundle install --without production test

# run as non-root
USER ruby

ADD . $APP_HOME
EXPOSE 3000
ENV PORT=3000
ENV RACK_ENV=development

CMD ["foreman", "start", "dev"]
