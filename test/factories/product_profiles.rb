# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_profile, :class => 'Product::Profile' do
    title "MyString"
    brick_house_cost 1
    panel_house_cost 1
    product_id 1
  end
end
