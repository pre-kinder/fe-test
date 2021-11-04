class TeachersController < ApplicationController
  def index
    if params[:query].present?
      @forecast = ForecastFacade.get_forecast(params[:query])
    else
      flash[:error] = 'Please enter a valid city'
    end
  end

  def new
  end

  def show
  end
end
