# frozen_string_literal: true

class InboxMessage < ApplicationRecord
  belongs_to :property
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
