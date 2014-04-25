FactoryGirl.define do
  factory :user do
    firstname 'Dude'
    lastname 'Duderson'
    email 'foo@bar.com'
    password 'foobario'
    password_confirmation 'foobario'
  end
end