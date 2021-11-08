class Parents::DashboardController < ApplicationController
  def index
    if params[:q].present?
      @forecast = ForecastFacade.get_forecast(params[:q])
    else
      flash[:error] = 'Please enter a valid city'
    end
  end

  def show
    if params[:q].present?
      @forecast = ForecastFacade.get_forecast(params[:q])
    else
      flash[:error] = 'Please enter a valid city'
    end
    @parent = ParentFacade.get_one_parent(current_user.google_id)
  end

  def create
  end

  def edit
  end
end
