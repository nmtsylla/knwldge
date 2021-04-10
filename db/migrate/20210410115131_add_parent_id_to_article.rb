class AddParentIdToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :parent_id, :integer
  end
end
