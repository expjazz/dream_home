# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :city
      t.string :neighborhood
      t.string :specie_type
      t.integer :specie_id
      t.integer :bedrooms
      t.integer :price
      t.integer :bathrooms
      t.boolean :pool_area
      t.boolean :pets
      t.integer :square_meters
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
