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
      expect(NBA::Stats::Team.get_team_stats().class.to_s).to eql("Hash")
    end
  end

  context '#get_teams: gets the teams' do
    it 'should be a hash' do
      expect(NBA::Stats::Team.get_teams().class.to_s).to eql("Hash")
    end
  end

  context '#get_team_by_id: gets a team' do
    it 'should equal a value' do
      expect(NBA::Stats::Team.get_team_by_id(1610612738).to_s).to eql("Boston Celtics")
    end
  end

end


# PLAYER NBA Leaders
describe 'NBA::Stats::Leaders' do

  context '#get_stats: gets the league leader stats' do
    it 'should be a hash' do
      expect(NBA::Stats::Leaders.get_stats().class.to_s).to eql("Hash")
    end
  end

  context '#all_time: gets the league leader all time stats' do
    it 'should be a hash' do
      expect(NBA::Stats::Leaders.all_time().class.to_s).to eql("Hash")
    end
  end

  context '#get_stats: gets the leaguedashplayerstats endpoint' do
    it 'should be a hash' do
      expect(NBA::Stats::Player.get_stats().class.to_s).to eql("Hash")
    end
  end

  context '#get_clutch_stats: gets the leaguedashplayerclutch end point' do
    it 'should be a hash' do
      expect(NBA::Stats::Player.get_clutch_stats().class.to_s).to eql("Hash")
    end
  end

  context '#get_dashboard_general: gets the playerdashboardbygeneralsplits end point' do
    it 'should be a hash' do
      ## This needs to take in a player id of Not 0 to work
      expect(NBA::Stats::Player.get_dashboard_general(measureType="Base",perMode="PerGame",plusMinus="N",paceAdjust="N",rank="N",season="2015-16",seasonType="Regular Season",playerId=203112).class.to_s).to eql("Hash")
    end
  end

end

# PLAYER TRACKING END POINTS
describe 'NBA::Tracking::Stats' do

  context '#get_player_shots: gets the player tracking shot data' do
    it 'should be a hash' do
      expect(NBA::Tracking::Stats.get_player_shots().class.to_s).to eql("Hash")
    end
  end

end

