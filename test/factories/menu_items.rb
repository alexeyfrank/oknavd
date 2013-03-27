# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :menu_item, :class => 'Menu::Item' do
    title "MyString"
    position 1
    slug "MyString"
    menu_id 1
  end
end
