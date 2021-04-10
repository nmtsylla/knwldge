module Sluggable
  extend ActiveSupport::Concern

  included do
    after_validation :set_slug, only: [:create, :update]
  end

  def to_param
    "#{id}-#{slug}"
  end
  
  def set_slug
    self.slug = name.to_s.parameterize
  end
end
