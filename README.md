# Schopz
A social media experience built with Ruby on Rails.

# Setup application

First you need to install ruby 3.0.3 and rails 7.0.4, then you can run all at once:

bundle install
rake db:create
rake db:migrate
yarn install
rake assets:precompile
rails server

Acess app on http://127.0.0.1:3000

## About

schopz was created based on a course criteria for building a social media example

## Features

- Log in / Log out

  - utilized [Devise](https://github.com/heartcombo/devise) so users can register or create new sessions
  - OAuth allows users to login with Facebook or Github

- Profile

  - when a new user signs up, a profile is created with a default color theme
  - users can add location, link, bio, full name, and profile image (default gravitar image)

- Posts

  - users can write posts and attach an image
  - posts can have many likes and comments

- Comments

  - can have many likes
  - users can reply to others (nested comments)
  - nested comments use turbo streams to avoid page reloads, append comments, and update the comment count.
  - stimulus used on reply forms so users can open and close prompts.

- Friendship

  - users can add other users as friends
  - when users are friends, their posts are rendered on eachother's feed.
  - uses turbo streams to avoid page reloads when requests are created, canceled, declined, or accepted

- Notifications

  - can take many forms (polymorphic)
  - notified when a reply is made to their comment
  - notified when comments are made on user's post
  - notified when post recives likes
  - notified when friendships are requested and accepted

- Mailer

  - welcome email is sent when new user is created

- Testing

  - wrote unit and system specs with RSpec/Capybara

- Styling

  - styled with Tailwind CSS
  - different layout renders if user is logged in or not
  - profile color is displayed based on users profile settings
  - notification icons vary based on notifiable type.
