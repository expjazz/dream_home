# frozen_string_literal: true

module UsersHelper
  def like_count(user)
    count = 0
    user.properties.each do |property|
      count += property.likes.count
    end
    count
  end

  def image_user(user)
    return image_tag user.image if user.image.attached?

    ''
  end

  def liked?(property, user)
    liked = false
    property.likes.each do |like|
      liked = true if like.user == user
      break if like == true
    end
    if liked == true
      render 'pages/liked'
    else
      render 'pages/not_liked'
    end
  end

  def liked
    render 'pages/liked'
  end

  def not_liked
    render 'pages/not_liked'
  end
end
