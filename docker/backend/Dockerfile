FROM ruby:3.1.2

LABEL authors="take0fit"

RUN apt-get update -qq && apt-get install -y nodejs npm
RUN npm install -g yarn

WORKDIR /app

COPY backend/Gemfile /app/Gemfile
COPY backend/Gemfile.lock /app/Gemfile.lock

RUN bundle install
COPY . /app

CMD ["rails", "server", "-b", "0.0.0.0"]
