require 'rails_helper'

describe "As a guest user" do 
  it "sees the landing page for artegee" do 
    visit "/"

    expect(page).to have_content("Sign Up")
    expect(page).to have_content("Login")
    expect(page).to have_content("Artists of the month")
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

    click_on "Submit"
  
    expect(current_path).to eq(user_onboarding_index_path(User.last))
  end
  it "can view an artists show page that is featured in artists of the month" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")

    visit root_path
    click_on "Discover"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Nico")
  end
  it "can view the show page for a featured piece of art" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    artwork = user.artworks.create(title: "lady with swan", description: "ooo look at that swan", width: 50, height: 30)

    visit "/"
    click_on "View"
    expect(current_path).to eq(user_artwork_path(user,artwork))
    expect(page).to have_content("lady with swan")
    expect(page).to have_content("ooo look at that swan")
    expect(page).to have_content(50)
    expect(page).to have_content(30)
  end
  it "can view the entire potfolio page for an artist" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")

    visit user_path(user)
    click_on "View all"
    expect(current_path).to eq(user_portfolio_index_path(user))
    expect(page).to have_content("Nico Lewis")
  end
end

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
  it "can see posts on its profile page" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    post = user.posts.create(body: "an example post")

    visit user_path(user)

    expect(page).to have_content("an example post")

  end
  it "can create a new piece of artwork" do 
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



