class Web::Admin::UserEditType < User
  include BaseType

  validates :password, confirmation: true
end