require 'rails_helper'

describe "As a guest user" do 
  it "sees the landing page for artegee" do 
    visit "/"

    expect(page).to have_content("Artegee")
    expect(page).to have_content("Sign Up")
  end
  it "clicks the sign up link and can sign up" do 
    visit new_user_path 

    fill_in "user[user_name]", with: "nico24687"
    fill_in "user[password]", with: "donothackin"

    click_on "Sign Up"
  
    expect(current_path).to eq(user_path(User.last))
    expect(page).to have_content("Welcome nico24687")
  end

  it "can log in if already have an account" do 
    user = create(:user, user_name: "nico24687", password: "donothackin")
    visit "/"

    click_on "Login"

    expect(current_path).to eq(login_path)

    fill_in :user_name, with: "nico24687"
    fill_in :password, with: "donothackin"
    click_on "Login"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome nico24687")

  end
end