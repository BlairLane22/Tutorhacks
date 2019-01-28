FactoryBot.define do
  factory :user do
    id { 1 }
    name { "John" }
    email { "joe@gmail.com" }
    password { "12345678" }
    password_confirmation { "12345678" }
    plan { "Student" }
    age { 17 }
  end

  factory :student do
    description { "This is a test student description" }
    grade { 12 }
  end

  factory :tutor do
    description { "This is a test tutor description" }
    price { 19.99 }
    gender { "Male" }
    subjects {["Math", "Chemistry", "Business"] }
    currency { "$" }
    phone_number { "6139832426" }
  end
end
