class NBA::Tracking
  class Stats
    BASE_URI = 'http://stats.nba.com/stats'

    def self.get_player_shots(perMode="PerGame",leagueID="00",season="2015-16",seasonType="Regular Season",pORound=0,closeDefDistRange=nil,shotClockRange=nil,shotDistRange=nil,touchTimeRange=nil,dribbleRange=nil,generalRange="Overall",teamID=0,outcome=nil,location=nil,month=0,seasonSegment=nil,dateFrom=nil,dateTo=nil,opponentTeamID=0,vsConference=nil,vsDivision=nil,conference=nil,division=nil,gameSegment=nil,period=0,lastNGames=0,draftYear=nil,draftPick=nil,college=nil,country=nil,height=nil,weight=nil,playerExperience=nil,playerPosition=nil,starterBench=nil)
      res = HTTP.get(BASE_URI+'/leaguedashplayerptshot', :params => {
          :PerMode => perMode,
          :LeagueID => leagueID,
          :Season => season,
          :SeasonType => seasonType,
          :PORound => pORound,
          :CloseDefDistRange => closeDefDistRange,
          :ShotClockRange => shotClockRange,
          :ShotDistRange => shotDistRange,
          :TouchTimeRange => touchTimeRange,
          :DribbleRange => dribbleRange,
          :GeneralRange => generalRange,
          :TeamID => teamID,
          :Outcome => outcome,
          :Location => location,
          :Month => month,
          :SeasonSegment => seasonSegment,
          :DateFrom => dateFrom,
          :DateTo => dateTo,
          :OpponentTeamID => opponentTeamID,
          :VsConference => vsConference,
          :VsDivision => vsDivision,
          :Conference => conference,
          :Division => division,
          :GameSegment => gameSegment,
          :Period => period,
          :LastNGames => lastNGames,
          :DraftYear => draftYear,
          :DraftPick => draftPick,
          :College => college,
          :Country => country,
          :Height => height,
          :Weight => weight,
          :PlayerExperience => playerExperience,
          :PlayerPosition => playerPosition,
          :StarterBench => starterBench
        })
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end

    def self.get_player_defense(perMode="PerGame",leagueID="00",season="2015-16",seasonType="Regular Season",pORound=0,playerID=nil,teamID=0,outcome=nil,location=nil,month=0,seasonSegment=nil,dateFrom=nil,dateTo=nil,opponentTeamID=0,vsConference=nil,vsDivision=nil,conference=nil,division=nil,gameSegment=nil,period=0,lastNGames=0,draftYear=nil,draftPick=nil,college=nil,country=nil,height=nil,weight=nil,playerExperience=nil,playerPosition=nil,starterBench=nil,defenseCategory="Overall")
      res = HTTP.get(BASE_URI+'/leaguedashptdefend', :params => {
          :PerMode => perMode,
          :LeagueID => leagueID,
          :Season => season,
          :SeasonType => seasonType,
          :PORound => pORound,
          :PlayerID => playerID,
          :TeamID => teamID,
          :Outcome => outcome,
          :Location => location,
          :Month => month,
          :SeasonSegment => seasonSegment,
          :DateFrom => dateFrom,
          :DateTo => dateTo,
          :OpponentTeamID => opponentTeamID,
          :VsConference => vsConference,
          :VsDivision => vsDivision,
          :Conference => conference,
          :Division => division,
          :GameSegment => gameSegment,
          :Period => period,
          :LastNGames => lastNGames,
          :DraftYear => draftYear,
          :DraftPick => draftPick,
          :College => college,
          :Country => country,
          :Height => height,
          :Weight => weight,
          :PlayerExperience => playerExperience,
          :PlayerPosition => playerPosition,
          :StarterBench => starterBench,
          :DefenseCategory => defenseCategory
        })
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end


    def self.get_team_shots(perMode="PerGame",leagueID="00",season="2015-16",seasonType="Regular Season",pORound=0,closeDefDistRange=nil,shotClockRange=nil,shotDistRange=nil,touchTimeRange=nil,dribbleRange=nil,generalRange="Overall",teamID=0,outcome=nil,location=nil,month=0,seasonSegment=nil,dateFrom=nil,dateTo=nil,opponentTeamID=0,vsConference=nil,vsDivision=nil,conference=nil,division=nil,gameSegment=nil,period=0,lastNGames=0)
      res = HTTP.get(BASE_URI+'/leaguedashteamptshot', :params => {
          :PerMode => perMode,
          :LeagueID => leagueID,
          :Season => season,
          :SeasonType => seasonType,
          :PORound => pORound,
          :CloseDefDistRange => closeDefDistRange,
          :ShotClockRange => shotClockRange,
          :ShotDistRange => shotDistRange,
          :TouchTimeRange => touchTimeRange,
          :DribbleRange => dribbleRange,
          :GeneralRange => generalRange,
          :TeamID => teamID,
          :Outcome => outcome,
          :Location => location,
          :Month => month,
          :SeasonSegment => seasonSegment,
          :DateFrom => dateFrom,
          :DateTo => dateTo,
          :OpponentTeamID => opponentTeamID,
          :VsConference => vsConference,
          :VsDivision => vsDivision,
          :Conference => conference,
          :Division => division,
          :GameSegment => gameSegment,
          :Period => period,
          :LastNGames => lastNGames
        })
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end

    def self.get_team_defense(perMode="PerGame",leagueID="00",season="2015-16",seasonType="Regular Season",pORound=0,teamID=0,outcome=nil,location=nil,month=0,seasonSegment=nil,dateFrom=nil,dateTo=nil,opponentTeamID=0,vsConference=nil,vsDivision=nil,conference=nil,division=nil,gameSegment=nil,period=0,lastNGames=0,defenseCategory="Overall")
      res = HTTP.get(BASE_URI+'/leaguedashptteamdefend', :params => {
          :PerMode => perMode,
          :LeagueID => leagueID,
          :Season => season,
          :SeasonType => seasonType,
          :PORound => pORound,
          :TeamID => teamID,
          :Outcome => outcome,
          :Location => location,
          :Month => month,
          :SeasonSegment => seasonSegment,
          :DateFrom => dateFrom,
          :DateTo => dateTo,
          :OpponentTeamID => opponentTeamID,
          :VsConference => vsConference,
          :VsDivision => vsDivision,
          :Conference => conference,
          :Division => division,
          :GameSegment => gameSegment,
          :Period => period,
          :LastNGames => lastNGames,
          :DefenseCategory => defenseCategory
        })
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end

  end
end
