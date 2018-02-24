require 'rails_helper'

RSpec.describe Artwork, type: :model do
  it "has the valid attriutes" do 
    artwork = Artwork.create(title: "masterpiece", description: "like the mona lisa but better", width: 50, height: 50)

    expect(artwork.title).to eq("masterpiece")
    expect(artwork.description).to eq("like the mona lisa but better")
    expect(artwork.width).to eq(50)
    expect(artwork.height).to eq(50)
  end
end

describe "relationships" do 
  it "belongs to a user" do 
    artwork = Artwork.create(title: "masterpiece", description: "like the mona lisa but better", width: 50, height: 50)

    expect(artwork).to respond_to(:user)
  end
end
