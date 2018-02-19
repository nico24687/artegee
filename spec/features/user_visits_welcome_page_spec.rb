require 'rails_helper'

describe "As a guest user" do 
  it "sees the landing page for artegee" do 
    visit "/"

    expect(page).to have_content("Sign Up")
    expect(page).to have_content("Login")
  end
  it "can sign up as a new user" do 
    visit new_user_path 

    fill_in "user[user_name]", with: "nico24687"
    fill_in "user[password]", with: "donothackin"
    fill_in "user[first_name]", with: "Nico"
    fill_in "user[last_name]", with: "Lewis"
    fill_in "user[email]", with: "fake@hotmail.com"
    fill_in "user[location]", with: "London"
    fill_in "user[bio]", with: "I like art"

    click_on "Sign Up"
  
    expect(current_path).to eq(user_path(User.last))
    expect(page).to have_content("Welcome nico24687")
    expect(page).to have_content("London")
    expect(page).to have_content("I like art")
    expect(page).to have_content("Nico Lewis")
  end

  it "can log in as an existing user" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    visit "/"

    click_on "Login"

    expect(current_path).to eq(login_path)

    fill_in :user_name, with: "nico24687"
    fill_in :password, with: "donothackin"
    
    click_on "Login"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome nico24687")
    expect(page).to have_content("Nico Lewis")
    expect(page).to have_content("London")
    expect(page).to have_content("I love art")

  end
end