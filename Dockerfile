FROM ruby:2.6.4

RUN apt-get update -qq && apt-get install -y postgresql-client

ENV BUNDLE_PATH /ephemeris/.gems
ENV GEM_HOME /ephemeris/.gems
