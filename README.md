# README

Before installation, make sure you have ruby 2.6.8 installed. visit [here](https://rvm.io/) for installation.

## Steps to run app locally,

1. clone the repo

- execute following commands in order
  1. `bundle install` to install required packages
  2. `rails db:migrate` to generate database tables
  3. `rails db:seed` to generate starter data
  4. `rails s` to start local development server

Upon setting up correctly, you can start your local server at [http://localhost:3000/](http://localhost:3000/)

You will have access to 2 users following details which you can use to login locally.

| username | password |
| -------- | -------- |
| user1    | pass1    |
| user2    | pass2    |

You can now start real-time messaging with Rails and socket.

After logging in succesfully, you will be presented with chat screen with couple of template message from above users.

PS: The App doesn't have much feature to offer as the project is focused on socket. Few navbar links and Sidebar links may not work :D
