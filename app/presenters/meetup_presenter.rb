class MeetupPresenter
  def initialize(location)
    @location = location
  end
  def meetups
    GetMeetupsInfoService.new.find_meetups(@location).map do |meetup|
      Meetup.new(name: meetup["name"], image: meetup["key_photo"]["highres_link"], description: meetup["description"], link: meetup["link"])
    end
  end
end