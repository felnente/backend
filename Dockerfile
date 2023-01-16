FROM ruby:3.2.0
LABEL Description="Docker Rails API Base"
WORKDIR /app

RUN gem install bundler

CMD exec bin/start.sh
