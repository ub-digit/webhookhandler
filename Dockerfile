FROM docker.ub.gu.se/rails:ruby-2.5.8-002

COPY . /usr/src/app

RUN bundle install