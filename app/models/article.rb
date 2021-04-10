class Article < ApplicationRecord
  include Sluggable
  belongs_to :category
  has_closure_tree order: 'sort_order', numeric_order: true
end
