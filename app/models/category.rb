class Category < ApplicationRecord
  include Sluggable
  has_many :articles
  has_closure_tree order: 'sort_order', numeric_order: true
end
