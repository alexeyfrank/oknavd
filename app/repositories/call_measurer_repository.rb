module CallMeasurerRepository
  extend ActiveSupport::Concern
  include UsefullScopes

  included do
    scope :web, -> { active.by_created_at }
    scope :admin, -> { by_created_at }
  end
end