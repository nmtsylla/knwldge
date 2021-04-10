class ChangeColumnNameInSession < ActiveRecord::Migration[6.1]
  def change
    rename_column :sessions, :title, :name
  end
end
