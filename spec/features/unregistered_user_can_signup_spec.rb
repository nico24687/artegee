require 'rails_helper'

describe "as an unregestiered user" do
  it "can sign up through artegee and typeform onboarding" do 
    visit new_user_path 
  
    fill_in "user[user_name]", with: "nico24687"
    fill_in "user[password]", with: "donothackin"
    page.attach_file("user[avatar]", Rails.root + 'app/assets/images/avatar-fat.jpg') 
   
    click_on "Submit"

    expect(current_path).to eq(user_onboarding_index_path(User.last))
  end 
end