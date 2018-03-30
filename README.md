# README

In this README you will find guidance to install and run the `content-indexer` backend application.

# Installation

You may wanna clone this repository by running `git clone https://github.com/sebasjimenez10/content-indexer.git`. After you've cloned the repository, proceed to install all the dependencies by running `bundle install`.

# Setup

After installing all the required gems, you may wanna run the database creation commands, like so: `rails db:create db:migrate`. This application relies on PosgreSQL so you need to have a posgres server running locally.

# Running

After having the database setup ready. We can now run the server by typing `foreman start` if you have the forman gem installed or simply execute `rails server`.


# Tests

To run the specs execute `bundle exec rspec`. This will run all the specs and generate a coverage report for you. You can open this report by typing `open coverage/index.html`.

# Security

There is a rake task to check multiple things. If you run `rails check:all` it will go ahead and run  all the specs, then `rubocop`, then `brakeman` and finally `bundler-audit`. If any of these checks fail it will raise an exception specifiying which step failed.

# Notes

There is a bundle configuration which installs all the gems in the `vendor/bundle` folder. The purpose behind this is to be able to easily find issue with external libraries, set breakpoint and even make changes to the code.

There is an improved version of this application that includes secutiry. There is another application that provides security tokens and users registration. This can be test by combining the code in the `secured` branch along with the `master` branch of the app called `content-indexer-registrations`.
