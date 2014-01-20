class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :allergy_type
      t.references :category
      t.references :sub_category
      t.references :intolerance_type
      t.references :manufacturer
      t.references :send_type

      t.timestamps
    end
  end
end
