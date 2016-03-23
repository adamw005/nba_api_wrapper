class NBA::Roster
  BASE_URI = 'http://stats.nba.com/stats'

  def self.get_team_roster(teamId=0,leagueId="00",season="2015-16")
    res = HTTP.get(BASE_URI+'/commonteamroster', :params => {
      :TeamID => teamId,
      :LeagueID => leagueId,
      :Season => season
    })
    if res.code == 200
      return JSON.parse(res.body)
    end
    return res.code
  end

end
