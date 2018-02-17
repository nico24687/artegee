require 'rails_helper'

describe "As a guest user" do 
  it "sees the landing page for artegee" do 
    visit "/"

    expect(page).to have_content("Artegee")
  end
  it "is able to"
end