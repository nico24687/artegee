class GetMeetupsInfoService
  def find_meetups(location)
    meetup_key = ENV['meetup_key']
    response = Faraday.get("https://api.meetup.com/find/groups?&sign=true&photo-host=public&location=#{location}&text=art&topic_id=1502&page=10&key=#{meetup_key}")
    JSON.parse(response.body)
  end
end