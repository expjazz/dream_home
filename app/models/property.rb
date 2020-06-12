# frozen_string_literal: true

class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :image
  belongs_to :specie, polymorphic: true
end
