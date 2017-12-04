[![Build Status](https://travis-ci.org/viniciuspalma/vayne.svg?branch=master)](https://travis-ci.org/viniciuspalma/vayne)
[![CodeClimate](https://codeclimate.com/github/viniciuspalma/vayne.png)](https://codeclimate.com/github/viniciuspalma/vayne)

# Vayne
A GraphQL wrapper to League of Legends Champions's endpoint and a changelog of champions.

## How to use

```bash
# clone the repository
git clone git@github.com:viniciuspalma/vayne.git

# go to directory
cd vayne

# install dependencies
bundle install

# create your config database file
cp config/database.yml.example config/database.yml

# create your dotenv file
cp .env.example .env

# database
bin/rails db:setup

# change the RIOT_API_KEY on .env file

# populate your database with RIOT API passing as parameter the season
bundle exec rake populate:champions[7]

# and now run your server
bin/rails s
```

## GraphQL Endpoint
To access the GraphQL API you must use the `POSt /graphql` endpoint
