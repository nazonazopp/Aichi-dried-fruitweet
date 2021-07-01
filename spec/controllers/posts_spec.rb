require 'rails_helper'

RSpec.describe Post, type: :controller do
  it "投稿できること" do
  post = Post.new(
    user_id:"1"
  
 

  )
  expect(post.user_id).to eq "1"
end
end
