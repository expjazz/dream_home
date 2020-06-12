# frozen_string_literal: true

class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :image
  belongs_to :specie, polymorphic: true
  scope :filter_city, ->(city) { where('city like ?', "%#{city}%") }
  scope :filter_neighborhood, lambda { |neighborhood|
                                where('neighborhood like ?',
                                      "%#{neighborhood}%")
                              }
end
