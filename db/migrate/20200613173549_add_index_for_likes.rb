# frozen_string_literal: true

class AddIndexForLikes < ActiveRecord::Migration[6.0]
  def change
    add_index :likes, %i[user property], unique: true
  end
end
