class MeetupPresenter
  def initialize(location)
    @location = location
  end
  def meetup
    meetup = GetMeetupsInfoService.new.find_meetups(@location).sample(1).first
    Meetup.new(name: meetup["name"], image: meetup_image(meetup), description: meetup["description"], link: meetup["link"])
  end

  private

  def meetup_image(meetup)
    if meetup.has_key?("key_photo")
      meetup["key_photo"]["highres_link"]
    else
      "https://image.ibb.co/naozDH/mountains_1x.png"
    end
  end
end