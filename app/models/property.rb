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
  scope :filter_price_mid, ->(price_one, price_two) { where("price >= #{price_one}").where("price <= #{price_two}") }
  scope :filter_price, ->(price) { where("price < #{price}") }
  scope :filter_bedrooms, ->(bedroom) { where("bedrooms == #{bedroom}") }
  scope :filter_bathrooms, ->(bathroom) { where("bathrooms == #{bathroom}") }
  scope :filter_meter_mid, ->(measure_one, measure_two) { where("square_meters > #{measure_one}").where("square_meters < #{measure_two}") }
  scope :filter_pets, ->(pets) { where(pets: pets) }
  scope :filter_pool_area, ->(pool) { where(pool_area: pool) }
end
