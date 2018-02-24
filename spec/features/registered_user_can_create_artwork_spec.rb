require 'rails_helper'

describe "As a registered user" do 
  it "can create a new piece of artwork for itself" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    visit user_path(user)
    
    click_on "New artwork"
    
    expect(current_path).to eq(new_user_artwork_path(user))
    fill_in "artwork[title]", with: "my masterpiece"
    fill_in "artwork[description]", with: "I know its so good"
    fill_in "artwork[width]", with: 20
    fill_in "artwork[height]", with: 60
    click_on "Submit"

    expect(current_path).to eq(user_path(user))

    expect(Artwork.count).to eq(1)
  end
end