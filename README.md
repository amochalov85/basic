# README

Run

docker-compose up --build

And open http://localhost:3000 in the browser

apt install libpq-dev

apt install libpq-dev


## Using JumpBox

- Run application with `docker-compose up --build`
- Connect to jumpbox machine in a new tab: `docker exec -it jumpbox /bin/bash` 
- Call any Rails command. Examples
  - `rails generate migration <name>` to create a migration
  - `rails db:migrate` to run migrations
  - `rails c` to run rails console
- Jumpbox is connected to your local file system and to the database from docker-compose. So use `rails` command line as you would have used it locally