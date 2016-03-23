class NBA::Stats
  class Player
  BASE_URI = 'http://stats.nba.com/stats'

  def self.get_stats(measureType="Base", perMode="PerGame", plusMinus="N", paceAdjust="N", rank="N", leagueID="00", season="2015-16", seasonType="Regular Season", pORound=0, outcome=nil, location=nil, month=0, seasonSegment=nil, dateFrom=nil, dateTo=nil, opponentTeamID=0, vsConference=nil, vsDivision=nil, teamID=0, conference=nil, division=nil, gameSegment=nil, period=0, shotClockRange=nil, lastNGames=0, gameScope=nil, playerExperience=nil, playerPosition=nil, starterBench=nil, draftYear=nil, draftPick=nil, college=nil, country=nil, height=nil, weight=nil)
    res = HTTP.headers(:referer => "http://stats.nba.com").get(BASE_URI+'/leaguedashplayerstats', :params => {
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
      :StarterBench => starterBench,
      :DraftYear => draftYear,
      :DraftPick => draftPick,
      :College => college,
      :Country => country,
      :Height => height,
      :Weight => weight
      })
    if res.code == 200
      return JSON.parse(res.body)
    end
    return res.code
  end

  def self.get_clutch_stats(measureType="Base",perMode="PerGame",plusMinus="N",paceAdjust="N",rank="N",leagueID="00",season="2015-16",seasonType="Regular Season",pORound=0,outcome=nil,location=nil,month=0,seasonSegment=nil,dateFrom=nil,dateTo=nil,opponentTeamID=0,vsConference=nil,vsDivision=nil,teamID=0,conference=nil,division=nil,gameSegment=nil,period=0,shotClockRange=nil,lastNGames=0,clutchTime="Last 5 Minutes",aheadBehind="Ahead or Behind",pointDiff=5,gameScope=nil,playerExperience=nil,playerPosition=nil,starterBench=nil,draftYear=nil,draftPick=nil,college=nil,country=nil,height=nil,weight=nil)
    res = HTTP.get(BASE_URI+'/leaguedashplayerclutch', :params => {
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
      :ClutchTime => clutchTime,
      :AheadBehind => aheadBehind,
      :PointDiff => pointDiff,
      :GameScope => gameScope,
      :PlayerExperience => playerExperience,
      :PlayerPosition => playerPosition,
      :StarterBench => starterBench,
      :DraftYear => draftYear,
      :DraftPick => draftPick,
      :College => college,
      :Country => country,
      :Height => height,
      :Weight => weight
      })
    if res.code == 200
      return JSON.parse(res.body)
    end
    return res.code
  end

  def self.get_dashboard_general(measureType="Base",perMode="PerGame",plusMinus="N",paceAdjust="N",rank="N",season="2015-16",seasonType="Regular Season",playerId=0,outcome=nil,location=nil,month=0,seasonSegment=nil,dateFrom=nil,dateTo=nil,opponentTeamID=0,vsConference=nil,vsDivision=nil,gameSegment=nil,period=0,lastNGames=0)
     res = HTTP.headers(:referer => "http://stats.nba.com").get(BASE_URI+'/playerdashboardbygeneralsplits', :params => {
       :MeasureType => measureType,
       :PerMode  => perMode,
       :PlusMinus => plusMinus,
       :PaceAdjust => paceAdjust,
       :Rank => rank,
       :Season => season,
       :SeasonType => seasonType,
       :PlayerID => playerId,
       :Outcome => outcome,
       :Location => location,
       :Month => month,
       :SeasonSegment => seasonSegment,
       :DateFrom => dateFrom,
       :DateTo => dateTo,
       :OpponentTeamID => opponentTeamID,
       :VsConference => vsConference,
       :VsDivision => vsDivision,
       :GameSegment => gameSegment,
       :Period => period,
       :LastNGames => lastNGames
      })
    if res.code == 200
      return JSON.parse(res.body)
    end
    return JSON.parse(res.body)
  end


  end
end