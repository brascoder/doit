FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /doit
WORKDIR /doit
ADD Gemfile /doit/Gemfile
RUN bundle install
ADD . /doit

