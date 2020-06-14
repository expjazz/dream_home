# frozen_string_literal: true

class CreateInboxMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :inbox_messages do |t|
      t.integer :sender_id, null: false, foreign_key: true
      t.integer :receiver_id, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
