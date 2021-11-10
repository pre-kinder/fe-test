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
    TeacherFacade.update_teacher_profile(json_body)
    flash[:success] = 'Your profile has been updated!'
    redirect_to teachers_profile_edit_path
  end

  def attendance
  end

  def classroom
    # @children = ChildrenFacade.classroom_children(current_user.google_id)
    # @events = EventFacade.classroom_events(current_user.google_id)
  end

  private

  def json_body
    body = {
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      address: params[:address],
      role: params[:role],
      google_id: current_user.google_id,
      google_image_url: current_user.google_image_url
    }
  end

  def check_teacher_role?
    User.teacher?
  end

  def teachers_params
   params.permit(:first_name, :last_name, :email, :phone_number, :address, :google_id)
 end
end
