# frozen_string_literal: true

class PagesController < ApplicationController
  def home; end

  def search
    @properties = Property.all
    if params[:property][:neighborhood] != ''
      @properties = @properties.filter_city(params[:neighborhood])
    end
    if params[:property][:city] != ''
      @properties = @properties.filter_city(params[:city])
    end
    if params[:property][:price] != ''
      @properties = @properties.filter_price_mid(price[0].to_i, price[1].to_i)
    end
    if params[:property][:bedrooms] != ''
      @properties = @properties.filter_bedrooms(params[:property][:bedrooms].to_i)
    end
    return [] unless @properties
    # filtering_params(params).each do |key, value|
    #   @properties = @properties.public_send("filter_#{key}", value) if value
    # end
    #   if params[:price_one]
    #     @properties = @properties.filter_meter_mid(params[:price_one], params[:price_two])
    #   end
    #   if params[:bedrooms]
    #     @properties = @properties.filter_meter_mid(params[:bedrooms])
    #   end
  end

  # def filtering_params(params)
  #   params.slice(:city, :neighborhood,
  #                :square_meter, :pets, :pool_area,
  #                :bathrooms)
  # end

  def price
    params[:property][:price].split('/')
  end
end
