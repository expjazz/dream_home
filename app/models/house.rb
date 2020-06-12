# frozen_string_literal: true

class House < ApplicationRecord
  has_one :property, as: :specie
end
