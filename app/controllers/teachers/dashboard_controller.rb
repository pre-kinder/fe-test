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

  def update
    ParentFacade.
    flash[:success] = 'Your profile has been updated!'
    redirect_to teachers_profile_edit_path
  end

  def attendance
  end

  private

  def check_teacher_role?
    User.teacher?
  end

  def teachers_params
   params.permit(:first_name, :last_name, :email, :phone_number, :address)
 end
end
