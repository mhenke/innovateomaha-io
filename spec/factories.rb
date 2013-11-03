FactoryGirl.define do
  factory :contact do |f|
    f.sequence(:name) { |n| "foo#{n}" }
  	f.email { "#{name}@example.com" }
  	f.subject { "hi from #{name}" }
    f.message { "what's up dude? thanks, #{name}" }
  end
end