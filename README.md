# Little Esty Shop
### Collaborators: [croixk](https://github.com/croixk)[dylan-harper](https://github.com/dylan-harper)[Henchworm](https://github.com/Henchworm)[jacksonvaldez](https://github.com/jacksonvaldez)

## Background and Description

"Little Esty Shop" is a group project that requires students to build a fictitious e-commerce platform where merchants and admins can manage inventory and fulfill customer invoices.

## Database Schema

![Screen Shot 2022-01-03 at 4 21 54 PM (2)](https://user-images.githubusercontent.com/39470230/149063403-e5691f8b-2588-45b8-be89-dcc5c92fa3b8.png)

## Ruby Gems

![closed pull requests badge](https://img.shields.io/github/issues-pr-closed/croixk/little-esty-shop?color=blue)
![pry v badge](https://img.shields.io/gem/v/pry?color=blue&label=pry)
![capybara v badge](https://img.shields.io/gem/v/capybara?color=cyan&label=capybara)
![shoulda-matchers v badge](https://img.shields.io/gem/v/shoulda-matchers?label=shoulda-matchers)
![orderly v badge](https://img.shields.io/gem/v/orderly?label=orderly)
![rspec v badge](https://img.shields.io/gem/v/rspec?color=orange&label=rspec)
![simplecov v badge](https://img.shields.io/gem/v/simplecov?color=green&label=simplecov)

## Learning Goals
- Practice designing a normalized database schema and defining model relationships
- Utilize advanced routing techniques including namespacing to organize and group like functionality together.
- Utilize advanced active record techniques to perform complex database queries
- Practice consuming a public API while utilizing POROs as a way to apply OOP principles to organize code

## Requirements
- must use Rails 5.2.x
- must use PostgreSQL
- all code must be tested via feature tests and model tests, respectively
- must use GitHub branching, team code reviews via GitHub comments, and github projects to track progress on user stories
- must include a thorough README to describe the project
- must deploy completed code to Heroku

## Setup

This project requires Ruby 2.7.2.

* Fork this repository
* Clone your fork
* From the command line, install gems and set up your DB:
    * `bundle`
    * `rails db:create`
* Run the test suite with `bundle exec rspec`.
* Run your development server with `rails s` to see the app in action.

## Phases

1. [Database Setup](./doc/db_setup.md)
1. [User Stories](./doc/user_stories.md)
1. [Extensions](./doc/extensions.md)
1. [Evaluation](./doc/evaluation.md)
