class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :glass
      t.string :category
      t.text :ingredients, default: [], array: true
      t.text :amounts, default: [], array: true
      t.string :garnish
      t.text :preparation

      t.timestamps
    end
  end
end
