class NBA
  class PlayByPlay
    BASE_URI = 'http://stats.nba.com/stats'

    def self.get_plays_for_game(game_id, start_period=1, end_period=10)
      res = HTTP.get(BASE_URI+'/playbyplayv2', :params => {:GameID => game_id, :EndPeriod => end_period, :StartPeriod => start_period})
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end

  end
end