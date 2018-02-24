require 'rails_helper'

describe "As a previously signed up user" do 
  it "can log in to see its profile page" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    visit "/"

    click_on "Login"

    expect(current_path).to eq(login_path)

    fill_in :user_name, with: "nico24687"
    fill_in :password, with: "donothackin"
    
    click_on "Submit"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Nico Lewis")
    expect(page).to have_content("London")
    expect(page).to have_content("I love art")
  end 
end