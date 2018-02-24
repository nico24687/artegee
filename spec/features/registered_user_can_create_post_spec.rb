require 'rails_helper'

describe "as a registered user" do 
  it "can create a post on a user show page" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    
    visit user_path(user)
    click_on "Create New Post"
    expect(current_path).to eq(new_user_post_path(user))
    fill_in "post[body]", with:"Check out my post"
    click_on "Create Post"
    expect(user.posts.count).to eq(1)

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Check out my post")
    # find(:css, 'i.fa.fa-eye.fa-lg').click


  end
end