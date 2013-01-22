FactoryGirl.define do
  factory :user do
    name      "Thomas Williams"
    email     "twilliams@example.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end
