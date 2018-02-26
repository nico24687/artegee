require 'rails_helper'

describe MeetupPresenter do 
  it "convers the json from the service to the meetup PORO" do 
    location = "London" 
    meetup =  MeetupPresenter.new(location).meetup 

    expect(meetup).to be_a(Meetup)
  end
end