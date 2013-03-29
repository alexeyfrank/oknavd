class Product < ActiveRecord::Base
  include ProductRepository

  attr_accessible :preview_image, :title, :size, :options

  has_many :profiles, class_name: 'Product::Profile', dependent: :destroy

  validates :title, presence: true, length:  { maximum: 255 }
  validates :size, presence: true, length:  { maximum: 255 }
  validates :options, presence: true, length:  { maximum: 255 }

  mount_uploader :preview_image, ProductPreviewUploader

  state_machine initial: :inactive do
    state :inactive
    state :active
    state :trashed

    event :activate do
      transition [:inactive, :trashed] => :active
    end

    event :deactivate do
      transition [:active, :trashed] => :inactive
    end

    event :trash do
      transition [:active, :inactive] => :trashed
    end
  end

  def to_s
    title
  end
end
