# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :site_setting, :class => 'SiteSettings' do
    banner "MyString"
  end
end
