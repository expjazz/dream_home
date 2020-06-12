# frozen_string_literal: true

class Buyer < ApplicationRecord
  has_one :user, as: :profile
end
