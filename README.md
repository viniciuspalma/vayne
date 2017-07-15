[![Build Status](https://travis-ci.org/viniciuspalma/vayne.svg?branch=master)](https://travis-ci.org/viniciuspalma/vayne)
[![CodeClimate](https://codeclimate.com/github/viniciuspalma/vayne.png)](https://codeclimate.com/github/viniciuspalma/vayne)

# Vayne
A GraphQL wrapper to League of Legends Champions's endpoint, and with some [black
magics](http://images.wikia.com/leagueoflegends/images/8/86/Vayne.move4.ogg)
compare champion's versions to return the version status, if was buffed or nerfed.

## Install

### Create your dotenv file with api key
```txt
RIOT_API_KEY=buff-adc-please
```

### Install the dependencies with bundler

```shell
bundle install
```


### Run a dev server with rackup

```shell
bundle exec rackup
```

## GraphQL Endpoint

`POST /graphql`
`Content-Type: 'application/graphql`

### Full example graphQL query

```graphql
{
  champion(id: 67) {
    id
    name
    title
    lore
    info {
      difficulty
      attack
      defense
      magic
    }
    stats {
      armorperlevel
      hpperlevel
      attackdamage
      mpperlevel
      attackspeedoffset
      armor
      hp
      hpregenperlevel
      spellblock
      attackrange
      movespeed
      attackdamageperlevel
      mpregenperlevel
      mp
      spellblockperlevel
      crit
      mpregen
      attackspeedperlevel
      hpregen
      critperlevel
    }
    image {
      full
      group
      sprite
      h
      w
      x
      y
    },
    versions {
      number
      status
    }
  }
}
```

### Full example response

```json
{
  "data": {
    "champion": {
      "id": "67",
      "name": "Vayne",
      "title": "the Night Hunter",
      "lore": "The world is not always as civilized as people might think...",
      "info": {
        "difficulty": 8,
        "attack": 10,
        "defense": 1,
        "magic": 1
      },
      "stats": {
        "armorperlevel": 3.4,
        "hpperlevel": 83.0,
        "attackdamage": 55.88,
        "mpperlevel": 35.0,
        "attackspeedoffset": -0.05,
        "armor": 19.012,
        "hp": 498.44,
        "hpregenperlevel": 0.55,
        "spellblock": 30.0,
        "attackrange": 550.0,
        "movespeed": 330.0,
        "attackdamageperlevel": 1.66,
        "mpregenperlevel": 0.4,
        "mp": 231.8,
        "spellblockperlevel": 0.5,
        "crit": 0.0,
        "mpregen": 6.972,
        "attackspeedperlevel": 4.0,
        "hpregen": 5.424,
        "critperlevel": 0.0
      },
      "image": {
        "full": "Vayne.png",
        "group": "champion",
        "sprite": "champion3.png",
        "h": 48,
        "w": 48,
        "x": 384,
        "y": 96
      },
      "versions": [
        {
          "number": "7.14.1",
          "status": "nerf"
        },
        {
          "number": "7.13.1",
          "status": "no_changes"
        },
        {
          "number": "7.12.1",
          "status": "no_changes"
        },
        {
          "number": "7.11.1",
          "status": "no_changes"
        }
      ]
    }
  }
}
```
