require 'rails_helper'

describe Meetup do
  it "has the required attributes" do 
    meetup = Meetup.new(name: "random name", image: "random.png", description: "random description", link: "random link")

    expect(meetup.name).to eq("random name")
    expect(meetup.image).to eq("random.png")
    expect(meetup.description).to eq("random description")
    expect(meetup.link).to eq("random link")
  end
end