FactoryBot.define do
  factory :mock_teacher, class: User do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber }
    address { Faker::Address }
    role { 'teacher'}
    google_id { 'jdfhiewlej83hr'}
    token { 'kdjfdlsgkirjeg;weskdr3u9843' }
    password { Faker::Internet.password(min_length: 6) }
  end

  factory :mock_parent, class: User do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber }
    address { Faker::Address }
    role { 'parent'}
    google_id { 'j374792384yer'  }
    token { 'ufh83uriajsifjalsgkodute'}
    password { Faker::Internet.password(min_length: 6) }
  end
end
