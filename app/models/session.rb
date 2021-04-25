class Session < ApplicationRecord
  has_rich_text :content
  has_many :questions
  belongs_to :user

  validates_presence_of :name
  validates_presence_of :startedAt
end
