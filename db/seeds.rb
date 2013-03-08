user = User.find_or_initialize_by_email 'admin@admin.com'
user.password = '12345'
user.save
user.activate