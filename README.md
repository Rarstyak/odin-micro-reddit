# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Assignment

Create a micro reddit with users and posts

## User Model
username [unique, 4-12 chars, present]
email [unique, present]
password [6-16 chars, present]

has_many posts

## Post Model
title [unique, present]
body [present]
user_id [present]

belongs_to user

## Comment Model
body [present]
user_id [present]
belongs_to user

belongs_to post

===
bin/rails g model User
bin/rails g migration AddUsernameToUsers username:string
bin/rails g migration AddEmailToUsers email:string
bin/rails g migration AddPasswordToUsers password:string

bin/rails g model Post  
bin/rails g migration AddTitleToPosts title:string
bin/rails g migration AddBodyToPosts body:text
bin/rails g migration AddUserRefToPosts user:references

bin/rails db:migrate

bin/rails g model Comment title:string body:text user:references post:references

bin/rails db:migrate
===

Next step: Add in commenting