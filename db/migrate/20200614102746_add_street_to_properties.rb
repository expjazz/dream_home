# frozen_string_literal: true

class AddStreetToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :street, :string
  end
end
