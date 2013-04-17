# create user
user = User.find_or_initialize_by_email 'admin@admin.com'
user.password = '12345'
user.save
user.activate

# create pages
configus.pages.each do |value|
  page = Page.find_or_initialize_by_slug value[0]
  if page.slug.eql? 'main'
    page.content = File.read(File.expand_path('seed_data/main.html', File.dirname(__FILE__)))
  end
  page.title = value[1]
  page.save
  page.activate
end

SiteSettings.create()