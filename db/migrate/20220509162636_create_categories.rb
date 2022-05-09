class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.bigint :category_id
      t.bigint :products_count, default: 0, null: false

      t.timestamps
    end

    add_index :categories, :category_id
  end
end
