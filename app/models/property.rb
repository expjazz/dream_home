# frozen_string_literal: true

class Property < ApplicationRecord
  belongs_to :user
  belongs_to :specie, polymorphic: true
end
