class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.string :description
      t.references :ingredient
      t.references :cocktail

      t.timestamps null: false
    end
  end
end
