class AddSortOrderToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :sort_order, :integer
  end
end
