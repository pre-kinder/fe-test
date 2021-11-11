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

  def edit
    @classrooms = ClassroomFacade.get_all_classrooms
  end

  def update
    TeacherFacade.update_teacher_profile(json_body, current_user.email)
    flash[:success] = 'Your profile has been updated!'
    redirect_to teachers_profile_edit_path
  end

  # def attendance
  # end

  def classroom
    @teacher = TeacherFacade.get_one_teacher(current_user.email)
    @classroom = ClassroomFacade.get_one_classroom(@teacher.classroom_id)
    @children = ChildFacade.get_classroom_children(@classroom.id)
    @events = EventFacade.get_classroom_events(@classroom.id)
  end

  def event_post
    @teacher = TeacherFacade.get_one_teacher(current_user.email)
    @classroom = ClassroomFacade.get_one_classroom(@teacher.classroom_id)
    EventFacade.create_event(event_json_body)
  end

  def child_post
    @teacher = TeacherFacade.get_one_teacher(current_user.email)
    @classroom = ClassroomFacade.get_one_classroom(@teacher.classroom_id)
    ChildFacade.create_child(child_json_body)
  end

  private

  def event_json_body
    body = {
      title: params[:title],
      date: params[:date],
      time: params[:time],
      description: params[:description],
      classroom_id: @classroom.id
    }
  end

  def child_json_body
    body = {
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthday: params[:birthday],
      classroom_id: @classroom.id
    }
  end

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
