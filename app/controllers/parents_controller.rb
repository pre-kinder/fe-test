class ParentsController < ApplicationController
  def index
    if params[:q].present?
      @forecast = ForecastFacade.get_forecast(params[:q])
    else
      flash[:error] = 'Please enter a valid city'
    end
  end

  def new
  end

  def show
  end

  def edit
  end
end
