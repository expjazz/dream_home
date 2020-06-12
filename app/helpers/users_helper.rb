# frozen_string_literal: true

module UsersHelper
  def like_count(user)
    count = 0
    user.properties.each do |property|
      count += property.likes
    end
    count
  end
end
