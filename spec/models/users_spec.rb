require 'rails_helper'
describe User do
 describe '#create' do

   # 1
   it "name、email、passwordとpassword_confirmationが存在すれば登録できること" do
    user = FactoryBot.build(:user)
     expect(user).to be_valid
   end

   # 2
   it "nameがない場合は登録できないこと" do
    user = FactoryBot.build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
   
   end
   
   # 3
   it "emailがない場合は登録できないこと" do
     user = FactoryBot.build(:user, email: "")
     user.valid?
     expect(user.errors[:email]).to include("can't be blank")
   end

   # 4
   it "passwordがない場合は登録できないこと" do
     user = FactoryBot.build(:user, password: "")
     user.valid?
     expect(user.errors[:password]).to include("can't be blank")
   end

   # 5
   it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
     user = FactoryBot.build(:user, password_confirmation: "")
     user.valid?
     expect(user.errors[:password_confirmation]).to include("doesn't match Password")
   end


   # 8
   it "重複したemailが存在する場合登録できないこと" do
     user = FactoryBot.create(:user)
     another_user = build(:user)
     another_user.valid?
     expect(another_user.errors[:email]).to include("has already been taken")
   end

   # 9
   it "passwordが6文字以上であれば登録できること" do
     user = FactoryBot.build(:user, password: "123456", password_confirmation: "123456")
     user.valid?
     expect(user).to be_valid
   end

   # 10
   it "passwordが5文字以下である場合は登録できないこと" do
     user = FactoryBot.build(:user, password: "12345", password_confirmation: "12345")
     user.valid?
     expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
   end

 end
end