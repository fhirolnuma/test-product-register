FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /test-product-register
COPY Gemfile Gemfile.lock /test-product-register/
RUN bundle install