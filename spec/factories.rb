FactoryGirl.define do
  factory :user do |f|
    # set some attrs
    f.name "Foo Bar"
  	f.email "foo@example.com"
  	f.login "fbar"
  end
end