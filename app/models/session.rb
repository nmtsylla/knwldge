class Session < ApplicationRecord
  has_rich_text :content
  has_many :questions
  belongs_to :user
  belongs_to :category, optional: true

  validates_presence_of :name
  validates_presence_of :startedAt
end
