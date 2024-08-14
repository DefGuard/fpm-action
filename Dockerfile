FROM ruby:3-alpine

RUN apk --no-cache add build-base rpm tar xz zip
COPY fpm fpm
RUN cd fpm && gem build fpm.gemspec && gem install --no-document fpm-1.15.1.gem && cd .. && rm -f -r fpm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
