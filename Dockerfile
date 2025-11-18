FROM ruby:3-alpine

RUN apk --no-cache add build-base rpm tar xz zip
RUN gem install --no-document fpm -v 1.17.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
