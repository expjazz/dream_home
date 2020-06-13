# frozen_string_literal: true

module ApplicationHelper
  def signed_in?
    if user_signed_in?
      render 'layouts/signed_in'
    else
      render 'layouts/not_signed_in'
    end
  end
end
