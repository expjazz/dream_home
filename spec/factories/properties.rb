FactoryBot.define do
  factory :property do
    city { "MyString" }
    neighborhood { "MyString" }
    bedrooms { 1 }
    price { 1 }
    bathrooms { 1 }
    pool_area { false }
    pets { "" }
    square_meters { 1 }
    user { nil }
  end
end
