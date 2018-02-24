require 'rails_helper'

RSpec.describe Post, type: :model do
  it "has the valid attributes" do 
    post = Post.new(body: "my post", user_id: 1)

    expect(post.body).to eq("my post")
  end
end

describe "relationships" do 
  it "belongs to a user" do
    post = Post.new(body: "my post", user_id: 1)

    expect(post).to respond_to(:user)
  end
end
