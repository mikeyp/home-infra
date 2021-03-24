FROM ruby:2.7-alpine

ENV TZ=America/New_York

RUN apk add build-base mariadb-dev

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD [ "ruby", "entry.rb" ]