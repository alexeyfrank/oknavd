class Web::Admin::NewsEditType < News
  include BaseType

  attr_accessible :state_event
end