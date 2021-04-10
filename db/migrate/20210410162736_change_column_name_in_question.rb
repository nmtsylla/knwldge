class ChangeColumnNameInQuestion < ActiveRecord::Migration[6.1]
  def change
    rename_column :questions, :title, :content
  end
end
