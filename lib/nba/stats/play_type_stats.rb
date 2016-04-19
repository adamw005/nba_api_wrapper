class NBA::Stats
  class PlayType
    BASE_URI = 'http://stats-prod.nba.com/wp-json/statscms/v1/synergy/player/'

    def self.get_by_play_type(perMode="Totals",season="2015-16",cat="Transition",limit=500,nm="offensive",seasonType="Reg")
      res = HTTP.get(BASE_URI, :params => {
        :PerMode => perMode,
        :Season => season,
        :category => cat,
        :limit => limit,
        :name => nm,
        :seasonType => seasonType
        })
      if res.code == 200
        return JSON.parse(res.body)
      end
      return res.code
    end
  end
end