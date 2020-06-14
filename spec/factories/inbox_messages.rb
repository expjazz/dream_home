FactoryBot.define do
  factory :inbox_message do
    sender_id { 1 }
    receiver_id { 1 }
    property { nil }
    body { "MyString" }
  end
end
