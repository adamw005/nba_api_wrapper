class NBA
  class Player
    BASE_URI = 'http://stats.nba.com/stats'

    def self.get_player(playerId, leagueId='00')
      res = HTTP.get(BASE_URI+'/commonplayerinfo', :params => {:LeagueID => leagueId, :PlayerID => playerId})
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end

    def self.get_all_players(is_current_season=true,leagueId='00',season_str=current_season)
      is_current_season = is_current_season ? 1 : 0
      res = HTTP.get(BASE_URI+'/commonallplayers', :params => {:IsOnlyCurrentSeason => is_current_season, :LeagueID => leagueId, :Season => season_str})
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end

    def self.current_season
      #ROLL THE CURRENT SEASON WHEN WE REACH AUGUST
      if Date.today.month >= 8
        last_year = Date.today.year.to_s
        cur_year = (Date.today.year+1).to_s[-2..-1]
        "#{last_year}-#{cur_year}"
      else
        last_year = (Date.today.year-1).to_s
        cur_year = Date.today.year.to_s[-2..-1]
        "#{last_year}-#{cur_year}"
      end
    end

  end #END OF PLAYER CLASS
end #END OF NBA NAMESPACE