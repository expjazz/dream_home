# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    @property = property
    @like = current_user.likes.build(property: @property = property)
    if @like.save
      respond_to do |format|
        format.js { render partial: 'pages/likes' }
      end
    end
  end

  def destroy
    @property = property
    @like = Like.find_by(params[:id])
    @property = property
    @like.destroy
    redirect_to request.referer
    #   respond_to do |format|
    #     format.js { render partial: 'pages/likes' }
    #   end
    # end
  end

  private

  def property
    Property.find(params.require(:property_id))
  end
end
