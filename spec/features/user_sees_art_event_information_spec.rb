require 'rails_helper'

describe "user visits a user show page" do 
  it "sees the required event information for the artist in this location" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")

    visit user_path(user)

    expect(page).to have_content("Art and Opera in Italy")
    expect(page).to have_css(".name")
    expect(page).to have_css(".image")
    expect(page).to have_css(".description")
    expect(page).to have_css(".link")
  end
end