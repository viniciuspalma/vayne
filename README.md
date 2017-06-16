# Vayne
A GraphQL wrapper to League of Legends Champions's endpoint

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
    name,
    lore,
    info {
      difficulty,
      attack,
      defense,
      magic
    },
    stats {
      armorperlevel,
      hpperlevel,
      attackdamage,
      mpperlevel,
      attackspeedoffset,
      armor,
      hp,
      hpregenperlevel,
      spellblock,
      attackrange,
      movespeed,
      attackdamageperlevel,
      mpregenperlevel,
      mp,
      spellblockperlevel,
      crit,
      mpregen,
      attackspeedperlevel,
      hpregen,
      critperlevel
    },
    image {
      full,
      group,
      sprite,
      h,
      w,
      x,
      y
    }
  }
}
```

### Full example response

```json
{
  "data": {
    "champion": {
      "name": "Vayne",
      "lore": "The world is not always as civilized as people might think. There are still those who would follow the blackest paths of magic and become corrupted by the darker powers that flow through Runeterra. Shauna Vayne knows this fact well.<br><br>As a young privileged girl in the heart of Demacia's elite, her father tried to convince her of the constabulary's ever-vigilant eye. Young and naive, she truly believed that her world was one of perfect safety, until one night, when a twisted witch took interest in her father. The malevolent woman overcame her father's conciliar guard, then tortured her family before murdering them. The young Shauna escaped only by hiding herself and then fleeing once the hag had departed, plagued by the screams of her loved ones as she ran. A burning hatred was born in her that day, one that could never be denied.<br><br>Vayne was able to take care of herself using her father's money, and she began to train as soon as an instructor would have her as a student. By the time she was a fully grown woman, she had become a grim warrior. However, the fields of battle were not to be her home.<br><br>Demacia needed a protector, one who hunted those lost to the darkness. Shauna used her family's contacts to become the first Night Hunter, and now her prowess is legendary. It is said that those who practice the black arts quake when they hear that the Night Hunter is on the prowl.<br><br>Not all shadows are to be feared. At least, if Vayne has her way.",
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
      }
    }
  }
}
```
