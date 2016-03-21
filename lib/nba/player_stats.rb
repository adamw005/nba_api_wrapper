class NBA
  class PlayerStats
    BASE_URI = 'http://stats.nba.com/stats'

    #THIS SHOULD BE REFACTORED TO ACCEPT SPLAT PARAMS
    def self.get_player_stats(leagueID="00", measureType="Base",lastNGames=0, month=0,opponentTeamID=0,poRound=0,paceAdjust="N",perMode="PerGame",period=0,plusMinus="N",rank="N",season="2015-16",seasonType="Regular Season",teamID=0)
      res = HTTP.headers(:referer => "http://stats.nba.com").get(BASE_URI+'/leaguedashplayerstats', :params => {
        :LeagueID => leagueID,
        :MeasureType => measureType,
        :LastNGames => lastNGames,
        :Month => month,
        :OpponentTeamID => opponentTeamID,
        :PORound => poRound,
        :PaceAdjust => paceAdjust,
        :PerMode => perMode,
        :Period => period,
        :PlusMinus => plusMinus,
        :Rank => rank,
        :Season => season,
        :SeasonType => seasonType,
        :TeamID => teamID,
        :College => nil,
        :Conference => nil,
        :Country => nil,
        :DateFrom => nil,
        :DateTo => nil,
        :Division => nil,
        :DraftPick => nil,
        :DraftYear => nil,
        :GameScope => nil,
        :GameSegment => nil,
        :Height => nil,
        :Location => nil,
        :Outcome => nil,
        :PlayerExperience => nil,
        :PlayerPosition => nil,
        :SeasonSegment => nil,
        :ShotClockRange => nil,
        :StarterBench => nil,
        :VsConference => nil,
        :VsDivision => nil,
        :Weight => nil})
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end

    # BEGINNINGS OF A NEW ENDPOINT THAT IS NOT FINISHED YET....
    # res = HTTP.headers(:referer => "http://stats.nba.com").get(BASE_URI+'/playerdashboardbygeneralsplits', :params => {
    #     :MeasureType => "Base",
    #     :PerMode  => "PerGame",
    #     :PlusMinus => "N",
    #     :PaceAdjust => "N",
    #     :Rank => "N",
    #     :Season => "2015-16",
    #     :SeasonType => "Regular Season",
    #     :PlayerID => 0,
    #     :Outcome => nil,
    #     :Location => nil,
    #     :Month => 0,
    #     :SeasonSegment => nil,
    #     :DateFrom => nil,
    #     :DateTo => nil,
    #     :OpponentTeamID => 0,
    #     :VsConference => nil,
    #     :VsDivision => nil,
    #     :GameSegment => nil,
    #     :Period => 0,
    #     :LastNGames => 0
    #   })


  end #END OF PLAYER STATS CLASS
end #END OF NBA NAMESPACE CLASS

