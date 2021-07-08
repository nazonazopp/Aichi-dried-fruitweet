FactoryBot.define do
  factory :user do
    name              {"testman"}
    email                 {"kkk@gmail.com"}
    password              {"12345678"}
    password_confirmation {"12345678"}
  end
end