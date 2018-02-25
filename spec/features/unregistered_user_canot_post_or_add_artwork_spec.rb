require 'rails_helper'

describe "as an unregistered user" do 
  it "cannot create artwork for an artist or post to their page" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    visit user_path(user)

    expect(page).to_not have_content("New artwork")
  end
  it "cannot create a post for an artist" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    visit user_path(user)

    expect(page).to_not have_css(".submit-post")
  end
end