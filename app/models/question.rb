class Question < ApplicationRecord
  belongs_to :session
  belongs_to :user, optional: true
  after_create_commit { broadcast_prepend_to "questions" }
  after_update_commit { broadcast_replace_to "questions" }
  after_destroy_commit { broadcast_remove_to "questions" }

  validates_presence_of :content
end
