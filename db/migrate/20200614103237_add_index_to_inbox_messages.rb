# frozen_string_literal: true

class AddIndexToInboxMessages < ActiveRecord::Migration[6.0]
  def change
    add_index :inbox_messages, :receiver_id
    add_index :inbox_messages, :sender_id
  end
end
