# frozen_string_literal: true

class PropertiesController < ApplicationController
  before_action :authenticate_user!, only: %i[create update]
  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user
    @property.specie = if params[:property][:specie_type] == 'House'
                         House.create
                       elsif params[:property][:specie_type] == 'Apartment'
                         Apartment.create
                       end
    @property.image.attach(params[:property][:image])
    if @property.save
      flash[:notice] = 'Your property was saved with success'
      redirect_to property_path(@property)
    else
      flash[:alert] = 'Your property was not saved'
      render 'new'
    end
  end

  def update; end

  def destroy; end

  def show
    @property = Property.find(params[:id])
  end

  def index
    @properties = Property.all
  end

  private

  def property_params
    params.require(:property).permit(:city, :neighborhood,
                                     :specie, :bedrooms, :price,
                                     :pool_area, :pets, :square_meters,
                                     :bathrooms)
  end
end
