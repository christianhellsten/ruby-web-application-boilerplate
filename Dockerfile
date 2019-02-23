FROM ruby:2.6.1

RUN apt-get update -qq && apt-get install -y build-essential
# foreman is used to start the application
RUN gem install foreman

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/

RUN bundle install --without production test

ADD . $APP_HOME
EXPOSE 3000
ENV PORT=3000
ENV RACK_ENV=development

CMD ["foreman", "start", "dev"]
