# FROM ruby:3.1.4-bookworm as base

# RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

# WORKDIR /docker/blog_v2

# RUN gem install bundler

# COPY Gemfile* ./

# RUN bundle install

# ADD . /docker/blog_v2

# ARG DEFAULT_PORT 3000

# EXPOSE ${DEFAULT_PORT}

# CMD ["rails", "server", "-b", "0.0.0.0"]

# CMD [ "bundle","exec", "puma", "config.ru"]
# you can also write like this.

# syntax=docker/dockerfile:1
# FROM ruby:3.1.4-bookworm as base
# RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
# WORKDIR /blogv2
# COPY Gemfile /blogv2/Gemfile
# COPY Gemfile.lock /blogv2/Gemfile.lock
# RUN bundle install

# # Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000

# # Configure the main process to run when running the image
# CMD ["rails", "server", "-b", "0.0.0.0"]