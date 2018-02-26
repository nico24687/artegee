class MeetupPresenter
  def initialize(location)
    @location = location
  end
  def meetup
    meetup = GetMeetupsInfoService.new.find_meetups(@location).sample(1).first
    Meetup.new(name: meetup["name"], image: meetup["key_photo"]["highres_link"], description: meetup["description"], link: meetup["link"])
  end
end