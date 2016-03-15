class NBA
  class Game
    BASE_URI = 'http://data.nba.com/jsonp/5s/json/cms/noseason/scoreboard'

    def self.get_games(date=today_date)
      url = BASE_URI+"/#{date}/games.json?callback=cb"
      res = HTTP.get(url)
      if res.code == 200
        # THE RESPONSE HERE IS JSONP, SO WE NEED TO PARSE IT
        len = res.body.to_s.length
        return JSON.parse(res.body.to_s[3,(len-5)])
      end
      return res.code
    end


    def self.today_date
      d = Date.today
      d.strftime('%Y%m%d')
    end


  end
end