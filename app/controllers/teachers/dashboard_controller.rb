class Teachers::DashboardController < ApplicationController
  before_action :check_teacher_role?
  def index
    if params[:q].present?
      @forecast = ForecastFacade.get_forecast(params[:q])
    else
      flash[:error] = 'Please enter a valid city'
    end
  end

  def show

  end

  def create
  end

  def edit
  end

  def check_teacher_role?
    current_user.role == 'teacher'
  end
end
