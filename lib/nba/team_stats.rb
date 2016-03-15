class NBA
  class TeamStats
    BASE_URI = 'http://stats.nba.com/stats'

    #THIS SHOULD BE REFACTORED TO ACCEPT SPLAT PARAMS
    def self.get_team_stats(per_mode="PerGame",plus_minus="N", pace_adjust="N",rank="N", league_id="00", season="2015-16", season_type="Regular Season", po_round=0, month=0,opponent_team_id=0,team_id=0,period=0,last_n_games=1)
      res = HTTP.get(BASE_URI+'/leaguedashteamstats', :params => {:MeasureType => "Base",
      :PerMode => per_mode,
      :PlusMinus => plus_minus,
      :PaceAdjust => pace_adjust,
      :Rank => rank,
      :LeagueID => league_id,
      :Season => season,
      :SeasonType => season_type,
      :PORound => po_round,
      :Outcome => nil,
      :Location => nil,
      :Month => month,
      :SeasonSegment => nil,
      :DateFrom => nil,
      :DateTo => nil,
      :OpponentTeamID => opponent_team_id,
      :VsConference => nil,
      :VsDivision => nil,
      :TeamID => team_id,
      :Conference => nil,
      :Division => nil,
      :GameSegment => nil,
      :Period => period,
      :ShotClockRange => nil,
      :LastNGames => last_n_games,
      :GameScope => nil,
      :PlayerExperience => nil,
      :PlayerPosition => nil,
      :StarterBench => nil})
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end

    def self.get_teams
      r = self.get_team_stats
      # CHECK IF THE RESPONSE FAILED, IF SO RETURN THE FAILURE
      if r.is_a? Numeric
        r
      else
        teams_hash = {}
        teams = r["resultSets"].first["rowSet"]
        teams.each_with_index do |val, index|
          teams_hash[teams[index][0]] = teams[index][1]
        end
        teams_hash
      end
    end

    def self.get_team_by_id(id)
      teams = get_teams
      teams[id]
    end

  end #END OF TEAM STATS CLASS
end #END OF NBA NAMESPACE CLASS