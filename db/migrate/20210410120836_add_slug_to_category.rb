class AddSlugToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :slug, :title
  end
end
