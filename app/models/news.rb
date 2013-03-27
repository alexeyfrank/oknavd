class News < ActiveRecord::Base
  include NewsRepository

  attr_accessible :content, :preview_image, :title

  mount_uploader :preview_image, NewsPreviewImageUploader

  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true

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
