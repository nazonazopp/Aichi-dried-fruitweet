require 'rails_helper'
describe Comment do
  describe '#create' do
    it "commentがない場合は投稿できないこと" do
      comment = Comment.new(comment:"")
      comment.valid?
      expect(comment.errors[:comment]).to include("can't be blank")
    end
  end
end
