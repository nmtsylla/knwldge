class Session < ApplicationRecord
  has_rich_text :content
  has_many :questions
end
