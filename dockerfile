FROM ruby:3.1.1

WORKDIR /backend
COPY Gemfile /backend/Gemfile
RUN bundle install
EXPOSE 3001
