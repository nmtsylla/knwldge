class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_rich_text :content
  has_many_attached :documents
end
