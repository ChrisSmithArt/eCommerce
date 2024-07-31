# Use the official Ruby image as a base image
FROM ruby:3.3.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs sqlite3

# Set the working directory inside the container
WORKDIR /eComm

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the RubyGems specified in the Gemfile
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose the port that the application will run on
EXPOSE 3000


# Run database migrations, seed the database, and start the Rails server
CMD ["bash", "-c", "bundle exec rails db:migrate && bundle exec rails db:seed && bundle exec rails s -b '0.0.0.0'"]