FactoryGirl.define do
  factory :user do |f|
    f.sequence(:login) { |n| "foo#{n}" }
  	f.email { "#{login}@example.com" }
  	f.name "Foo Bar"
  end
end