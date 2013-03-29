class Web::Admin::ProductEditType < Product
  include BaseType

  attr_accessible :state_event

  validates_associated :profiles
  attr_accessible :profiles_attributes
  accepts_nested_attributes_for :profiles, allow_destroy: true, reject_if: :all_blank
end