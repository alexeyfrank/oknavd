class CallMeasurer < ActiveRecord::Base
  include CallMeasurerRepository
  attr_accessible :contacts, :content, :full_name

  validates :full_name, presence: true, length: { maximum: 255 }
  validates :contacts, presence: true, length: { maximum: 255 }

end
