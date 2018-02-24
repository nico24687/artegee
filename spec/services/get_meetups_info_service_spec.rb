require 'rails_helper'

describe GetMeetupsInfoService do 
  it "returns the correct meetup information for a given location" do 
    location = "London"
    meetups = GetMeetupsInfoService.new.find_meetups(location)

    expect(meetups.count).to eq(10)
    expect(meetups.first).to have_key("name")
    expect(meetups.first["key_photo"]).to have_key("highres_link")
    expect(meetups.first).to have_key("description")
    expect(meetups.first).to have_key("link")

  end
end
