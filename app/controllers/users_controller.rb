# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def likes_create
    @like = current_user.likes.build(property: params[:property])
    @like.save
  end

  def likes_destroy
    @like = Like.find_by(user: current_user, property: params[:property])
    @like.destroy
  end
end
