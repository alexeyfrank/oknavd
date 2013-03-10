FactoryGirl.define do

  sequence :email do |n|
    "email_#{n}@mail.com"
  end

  [:slug, :title, :content, :full_name, :phone].each do |trait|

    sequence trait do |n|
      "#{trait}_#{n}"
    end

  end
  sequence :image do |n|
    fixture_file_upload Rails.root.to_s + "/test/fixtures/photos/test.png", "image/png"
  end
end
