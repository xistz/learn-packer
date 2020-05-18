FROM ruby:2.7-alpine as base

WORKDIR /app

RUN apk add --update --no-cache build-base \
                                mariadb-dev

RUN gem install --no-document bundler

COPY Gemfile .
COPY Gemfile.lock .

FROM base as development

ENV LANG ja_JP.UTF-8
ENV TZ=UTC

RUN apk add --update --no-cache tzdata \
                                ca-certificates && \
    update-ca-certificates

RUN bundle install -j4 --retry 3 && \
    rm -rf /usr/local/bundle/cache/*.gem && \
    find /usr/local/bundle/gems/ -name "*.c" -delete && \
    find /usr/local/bundle/gems/ -name "*.o" -delete

RUN bundle install 