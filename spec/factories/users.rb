FactoryBot.define do
  factory :user do
    name              {"testtest"}
    email                 {"nazonazo@gmail.com"}
    password              {"12345678"}
    password_confirmation {"12345678"}
  end
end