require 'rails_helper'

describe "As a guest artist" do 
  it "sees the landing page for artegee" do 
    visit "/"

    expect(page).to have_content("Artegee")
    expect(page).to have_content("Sign Up")
  end
  it "clicks the sign up link and can sign up" do 
    visit new_artist_path 

    fill_in "artist[username]", with: "nico24687"
    fill_in "artist[password]", with: "donothackin"

    click_on "Sign Up"
  
    expect(current_path).to eq(artist_path(Artist.last))
    expect(page).to have_content("Welcome nico24687")
  end

  it "can log in if already have an account" do 
    artist = create(:artist, username: "nico24687", password: "donothackin")
    visit "/"

    click_on "Login"

    expect(current_path).to eq(login_path)

    fill_in :username, with: "nico24687"
    fill_in :password, with: "donothackin"
    click_on "Login"

    expect(current_path).to eq(artist_path(artist))
    expect(page).to have_content("Welcome nico24687")

  end
end