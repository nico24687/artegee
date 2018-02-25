require 'rails_helper'

describe "as a registered user" do 
  it "can post to its own user show page" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit user_path(user)
    fill_in "post[body]", with:"Check out my post"
    find(:css, '.submit-post').click

    expect(current_path).to eq(user_path(user))
    expect(user.posts.count).to eq(1)
    expect(page).to have_content("Check out my post")

  end
end 