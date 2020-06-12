# frozen_string_literal: true

class Apartment < ApplicationRecord
  has_one :property, as: :specie
end
