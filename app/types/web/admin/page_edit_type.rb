class Web::Admin::PageEditType < Page
  include BaseType

  attr_accessible :state_event, :menu_id
end