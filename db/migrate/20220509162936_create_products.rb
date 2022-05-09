class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, default: ""
      t.boolean :present, default: false, null: false
      t.bigint :price, default: 0, null: false
      t.bigint :category_id, null: false

      t.timestamps
    end
  end
end
