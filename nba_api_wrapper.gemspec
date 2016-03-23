Gem::Specification.new do |s|
  s.name        = 'nba_api_wrapper'
  s.version     = '0.2.0'
  s.date        = '2016-03-13'
  s.summary     = "NBA API Wrapper"
  s.description = "A simple gem to get the NBA API endpoints"
  s.authors     = ["Jesse Mills"]
  s.email       = 'jessemills1989@gmail.com'
  s.files       = ["lib/nba_api_wrapper.rb", "lib/nba/nba.rb", "lib/nba/game.rb","lib/nba/play_by_play.rb","lib/nba/player.rb", "lib/nba/stats/team_stats.rb", "lib/nba/stats/leaders.rb", "lib/nba/stats/player_stats.rb", "lib/nba/tracking/tracking_stats.rb"]
  # s.homepage    =
  #   'http://rubygems.org/gems/nba_api_wrapper'
  s.license       = 'MIT'
  s.add_development_dependency 'rspec', '~> 3.4.0', '>= 3.4.0'
  s.add_development_dependency 'http', '~> 1.0.2', '>= 1.0'
  s.add_development_dependency 'json', '~> 1.8.1', '>= 1.8.1'
end