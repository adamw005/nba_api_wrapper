# Test Status

[![Build Status](https://travis-ci.org/jrmils89/nba_api_wrapper.svg?branch=master)](https://travis-ci.org/jrmils89/nba_api_wrapper)

# Installation
```
git clone https://github.com/jrmils89/nba_api_wrapper.git
```
Navigate your way into the cloned directory. If you want to confirm the tests are passing still, you can run the tests (reference 'To Run Tests'). Otherwise

#### Build the gem
```
gem build nba_api_wrapper.gemspec
```
#### Install the gem
```
gem install nba_api_wrapper-0.1.0.gem
```

#### To Use The Gem

##### Locally
```
require 'nba_api_wrapper'
```
##### If You Want To Include An Up To Date Version In Your Rails Project
```
gem 'nba_api_wrapper', :git => 'git://github.com/jrmils89/nba_api_wrapper.git'
```


# To Run Tests
From the gem's directory
```
bundle install
```

```
rspec spec/wrapper_spec.rb
```

# Usage

## Game
#### Get Games
```ruby```
NBA::Game.get_games(date)
```
Returns information about games for a given date. The date param is optional and will default to today if not passed.

Date format expected is YYYYMMDD

## Player
#### Get A Single Player
```ruby```
NBA::Player.get_player(player_id, league_id)
```

Will return a single player's information. player_id is required and is the NBA's player id.

league_id is optional, and will default to '00' which is the NBA league id. It also accepts '20' which is the NBADL league ID
#### Get Multiple Players
```ruby```
NBA::Player.get_all_players(is_current_season,leagueId,season_str)
```

Will return a comprehensive list of players. All parameters are optional. is_current_season is a boolean that when true returns only players for the current season, and when false returns historical players as well. Default is true. leagueId defaults to '00', is the same as league_id above. season_str refers to the current NBA season. It expects a string in the format of '2015-16'. It will default to the current season and rolls to the next season on August 1st.

## Play By Play

#### Get Plays
```ruby```
NBA::PlayByPlay.get_plays_for_game(game_id, start_period, end_period)
```
Returns play by play information for a given game.

game_id is required (and is the NBA's game id), while start_period and end_period are optional and will default to 1 & 10 respectively.

## Team Info
#### Get Lots Of Team Stat Info
```ruby```
NBA::TeamStats.get_team_stats(lots of params)
```
*IMPORTANT*

This accepts a boatload of params at the moment, none of which are required and many of which are currently hard coded. If you're interested in seeing the possible options you can test out an example endpoint [here](http://stats.nba.com/stats/leaguedashteamstats?Conference=&DateFrom=&DateTo=&Division=&GameScope=&GameSegment=&LastNGames=0&LeagueID=00&Location=&MeasureType=Base&Month=0&OpponentTeamID=0&Outcome=&PORound=0&PaceAdjust=N&PerMode=PerGame&Period=0&PlayerExperience=&PlayerPosition=&PlusMinus=N&Rank=N&Season=2015-16&SeasonSegment=&SeasonType=Regular+Season&ShotClockRange=&StarterBench=&TeamID=0&VsConference=&VsDivision=)

#### Get Team Info
```ruby```
NBA::TeamStats.get_teams
```

This will return a list of current NBA teams in a hash where the key is the team id and the value is their name in string format

#### Get A Team Name
```ruby```
NBA::TeamStats.get_team_by_id(id)
```

This will return a a string of a team name when passed a team id. The id is required.

# Disclaimer

As is the case with all wrappers around 3rd party end points, I do not claim ownership of this data. This gem also only works in so far as the NBA doesn't change, disable, or remove these endpoints.

# Contributing

Happy to have people contibute to this if they'd like! Please submit pull requests if you have anything you'd like me to add!