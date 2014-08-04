class Api::V1::PhonesController < ApplicationController

  def index
    render json: Phone.all
  end

  def create

  end

  def show
    render json: Phone.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private

end
