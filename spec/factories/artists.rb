FactoryBot.define do 
  factory :artist do 
    username {Faker::Internet.user_name}
    password "donothackin"
    bio {Faker::Hipster.sentence}
    profile_picture "image.png"
    first_name {Faker::Name.first_name }
    last_name {Faker::Name.last_name }
    email {Faker::Internet.free_email}
    location "London"
  end
end