class Api::V1::PhonesController < ApplicationController

  def index
    render json: Phone.all, callback: params[:callback]
  end

  def create

  end

  def show
    render json: Phone.find(params[:id]), callback: params[:callback]
  end

  def update

  end

  def destroy

  end

  private

end
