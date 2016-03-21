require 'spec_helper'

# PLAYER TESTS
describe 'NBA:Player' do

  context '#get_player: gets player' do
    it 'should be a hash' do
      expect(NBA::Player.get_player(203112).class.to_s).to eql("Hash")
    end
  end

  context '#get_all_players: gets all players' do
    it 'should be a hash' do
      expect(NBA::Player.get_all_players().class.to_s).to eql("Hash")
    end
  end
end

# GAME TESTS
describe 'NBA:Game' do

  context '#get_games: gets the games for a date' do
    it 'should be a hash' do
      expect(NBA::Game.get_games().class.to_s).to eql("Hash")
    end
  end

end

# PLAY BY PLAY TESTS
describe 'NBA:PlayByPlay' do

  context '#get_plays_for_game: gets the play by play for a game' do
    it 'should be a hash' do
      expect(NBA::PlayByPlay.get_plays_for_game('0021500513').class.to_s).to eql("Hash")
    end
  end

end

# TEAM TESTS

describe 'NBA:TeamStats' do

  context '#get_team_stats: gets team stats' do
    it 'should be a hash' do
      expect(NBA::TeamStats.get_team_stats().class.to_s).to eql("Hash")
    end
  end

  context '#get_teams: gets the teams' do
    it 'should be a hash' do
      expect(NBA::TeamStats.get_teams().class.to_s).to eql("Hash")
    end
  end

  context '#get_team_by_id: gets a team' do
    it 'should equal a value' do
      expect(NBA::TeamStats.get_team_by_id(1610612738).to_s).to eql("Boston Celtics")
    end
  end

end



# PLAYER STATS TESTS
describe 'NBA:PlayerStats' do

  context '#get_player_stats: gets the player stats for a number of situations' do
    it 'should be a hash' do
      expect(NBA::PlayerStats.get_player_stats().class.to_s).to eql("Hash")
    end
  end

end
