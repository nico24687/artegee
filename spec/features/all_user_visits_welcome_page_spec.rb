require 'rails_helper'

describe "As an unregistered or registered user" do 
  it "sees the landing page for artegee" do 
    visit "/"

    expect(page).to have_content("Sign Up")
    expect(page).to have_content("Login")
    expect(page).to have_content("For the art lover, or even just the art curious")
    expect(page).to have_content("Artists of the month")
    expect(page).to have_content("Featured Artworks")
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
    expect(page).to have_content("Lady with swan")
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
  it "can see posts on an artists profile page" do 
    user = User.create(user_name: "nico24687", password: "donothackin", bio: "I love art", first_name: "Nico", last_name: "Lewis", email: "nico@fake.com", location:"London")
    post = user.posts.create(body: "an example post")

    visit user_path(user)

    expect(page).to have_content("an example post")
  end

end




