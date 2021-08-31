class CreateNodes < ActiveRecord::Migration[6.1]
  def change
    create_table :nodes do |t|
      t.string :label
      t.integer :layer
      t.decimal :value
    end
  end
end
