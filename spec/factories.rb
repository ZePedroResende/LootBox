FactoryBot.define do
  factory :buy do
    user { nil }
    box { nil }
  end

  factory :box do
    title { "MyString" }
    description { "MyText" }
    amount { "9.99" }
  end

  factory :merchant do
    
  end

  factory :user do
    
  end

end
