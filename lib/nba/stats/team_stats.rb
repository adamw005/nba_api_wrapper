class NBA::Stats
  class Team
    BASE_URI = 'http://stats.nba.com/stats'
    #THIS SHOULD BE REFACTORED TO ACCEPT SPLAT PARAMS
    def self.get_team_stats(measureType="Advanced",perMode="Totals",plusMinus="N",paceAdjust="N",rank="N",leagueID="00",season="2015-16",seasonType="Regular Season",pORound=0,outcome=nil,location=nil,month=0,seasonSegment=nil,dateFrom=nil,dateTo=nil,opponentTeamID=0,vsConference=nil,vsDivision=nil,teamID=0,conference=nil,division=nil,gameSegment=nil,period=0,shotClockRange=nil,lastNGames=0,gameScope=nil,playerExperience=nil,playerPosition=nil,starterBench=nil)
      res = HTTP.get(BASE_URI+'/leaguedashteamstats', :params => {
        :MeasureType => measureType,
        :PerMode => perMode,
        :PlusMinus => plusMinus,
        :PaceAdjust => paceAdjust,
        :Rank => rank,
        :LeagueID => leagueID,
        :Season => season,
        :SeasonType => seasonType,
        :PORound => pORound,
        :Outcome => outcome,
        :Location => location,
        :Month => month,
        :SeasonSegment => seasonSegment,
        :DateFrom => dateFrom,
        :DateTo => dateTo,
        :OpponentTeamID => opponentTeamID,
        :VsConference => vsConference,
        :VsDivision => vsDivision,
        :TeamID => teamID,
        :Conference => conference,
        :Division => division,
        :GameSegment => gameSegment,
        :Period => period,
        :ShotClockRange => shotClockRange,
        :LastNGames => lastNGames,
        :GameScope => gameScope,
        :PlayerExperience => playerExperience,
        :PlayerPosition => playerPosition,
        :StarterBench => starterBench
      })
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
end
