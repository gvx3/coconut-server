FactoryBot.define do
  factory :access_token do
    token_digest { "MyString" }
    string { "MyString" }
    user { nil }
    api_key { nil }
    accessed_at { "2019-07-05 07:19:54" }
  end
end
