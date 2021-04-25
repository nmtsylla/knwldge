class AddCategoryToSession < ActiveRecord::Migration[6.1]
  def change
    add_reference :sessions, :category, null: true, foreign_key: true
  end
end
