class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :title
      t.datetime :startedAt
      t.datetime :endAt

      t.timestamps
    end
  end
end
