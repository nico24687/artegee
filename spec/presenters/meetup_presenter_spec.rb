require 'rails_helper'

describe MeetupPresenter do 
  it "convers the json from the service to the meetup PORO" do 
    location = "London" 
    meetups = MeetupPresenter.new(location).meetups

    expect(meetups.first.name).to eq("Art and Opera in Italy")
    expect(meetups.first.image).to eq("https://secure.meetupstatic.com/photos/event/1/f/7/4/highres_465428052.jpeg")
    expect(meetups.first.description).to eq("<p>Those interested in visits to Italy <br>in small groups to enjoy their Art , <br>Culture and Opera . Artstur organises small groups</p>")
    expect(meetups.first.link).to eq("https://www.meetup.com/Art-Opera-in-Italy/")
  end
end