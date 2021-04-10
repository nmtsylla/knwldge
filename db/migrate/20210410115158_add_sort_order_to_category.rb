class AddSortOrderToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :sort_order, :integer
  end
end
