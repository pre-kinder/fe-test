class TeachersController < ApplicationController
  def index
    if params[:q].present?
      @forecast = ForecastFacade.get_forecast(params[:q])
    else
      flash[:error] = 'Please enter a valid city'
    end
  end

  def create
    @teacher = TeacherFacade.post_teacher(current_user.first_name, current_user.last_name, current_user.email, current_user.address, current_user.phone_number, current_user.google_image_url, current_user.google_id)
  end

  def show
  end

  def edit
  end
end
