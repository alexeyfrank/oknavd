# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :call_measurer do
    full_name
    contacts
    content
  end
end
