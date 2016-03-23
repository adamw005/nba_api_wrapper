class NBA::Stats
  class Leaders
  BASE_URI = 'http://stats.nba.com/stats'

  def self.get_stats(leagueId="00", perMode="PerGame", season="2015-16", seasonType="Regular Season", scope="S", statCategory="PTS")
    res = HTTP.get(BASE_URI+'/leagueleaders', :params => {
      :LeagueID => leagueId,
      :PerMode => perMode,
      :Season => season,
      :SeasonType => seasonType,
      :Scope => scope,
      :StatCategory => statCategory
      })
    if res.code == 200
      return JSON.parse(res.body)
    end
    return res.code
  end

  def self.all_time(leagueId="00", perMode="PerGame", season="All Time", seasonType="Regular Season", scope="S", statCategory="PTS")
    res = HTTP.get(BASE_URI+'/leagueleaders', :params => {
      :LeagueID => leagueId,
      :PerMode => perMode,
      :Season => season,
      :SeasonType => seasonType,
      :Scope => scope,
      :StatCategory => statCategory
      })
    if res.code == 200
      return JSON.parse(res.body)
    end
    return res.code
  end

  end
end