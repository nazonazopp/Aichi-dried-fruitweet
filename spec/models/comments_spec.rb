require 'rails_helper'
describe Comment do
  describe '#create' do
    it "commentがない場合は投稿できないこと" do
      comment = Comment.new(comment:"")
      comment.valid?
     
    end
  end
end
