require 'rails_helper'
describe Post do
  describe '#create' do
 
    it "titleがない場合は登録できないこと" do
     post = FactoryBot.build(:post, title: "")
     post.valid?
     expect(post.errors[:title]).to include("can't be blank")
    end
    
    it "imageがない場合は登録できないこと" do
      post = FactoryBot.build(:post, image: "")
      post.valid?
      expect(post.errors[:image]).to include("can't be blank")
    end
 
    it "textがない場合は登録できないこと" do
      post = FactoryBot.build(:post, text: "")
      post.valid?
      expect(post.errors[:text]).to include("can't be blank")
    end
 
  
 
  end
end