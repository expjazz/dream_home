# frozen_string_literal: true

class Seller < ApplicationRecord
  has_one :user, as: :profile
end
