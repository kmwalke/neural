class CreateConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :connections do |t|
      t.integer :left_id
      t.integer :right_id
      t.decimal :weight, null: false
    end
  end
end
