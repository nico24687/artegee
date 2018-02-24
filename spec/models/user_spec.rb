require 'rails_helper'

RSpec.describe User, type: :model do
  it "has the valid attributes" do 
    user = User.create(user_name: "nico24687", password_digest: "randomsha", bio: "I like art", first_name: "Nico",
                       last_name: "Lewis", email: "theonlynico@hotmail.com", location: "london", avatar_file_name: "rand",
                       avatar_content_type: "png", avatar_file_size: 20, school: "westminster", style: "realism"
                      )

    expect(user.user_name).to eq("nico24687")
    expect(user.password_digest).to eq("randomsha")
    expect(user.bio).to eq("I like art")
    expect(user.first_name).to eq("Nico")
    expect(user.last_name).to eq("Lewis")
    expect(user.email).to eq("theonlynico@hotmail.com")
    expect(user.location).to eq("london")
    expect(user.avatar_file_name).to eq("rand")
    expect(user.avatar_content_type).to eq("png")
    expect(user.avatar_file_size).to eq(20)
    expect(user.school).to eq("westminster")
    expect(user.style).to eq("realism")
  end
end

describe "relationships" do
  it "has many artworks" do 
    user = User.create(user_name: "nico24687", password_digest: "randomsha", bio: "I like art", first_name: "Nico",
                    last_name: "Lewis", email: "theonlynico@hotmail.com", location: "london", avatar_file_name: "rand",
                    avatar_content_type: "png", avatar_file_size: 20, school: "westminster", style: "realism"
                  )

    expect(user).to respond_to(:artworks)
  end
  it "has many posts" do 
    user = User.create(user_name: "nico24687", password_digest: "randomsha", bio: "I like art", first_name: "Nico",
                    last_name: "Lewis", email: "theonlynico@hotmail.com", location: "london", avatar_file_name: "rand",
                    avatar_content_type: "png", avatar_file_size: 20, school: "westminster", style: "realism"
                  )

    expect(user).to respond_to(:posts)
  end
end
