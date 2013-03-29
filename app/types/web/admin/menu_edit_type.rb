class Web::Admin::MenuEditType < Menu
  include BaseType

  validates_associated :items
  attr_accessible :items_attributes
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
end