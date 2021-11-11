class Teachers::RegistrationController < ApplicationController
  def new
    #@classrooms = ClassroomFacade.get_all_classrooms
  end

  def edit
  end

  def create
    if current_user.update(downcased_teacher_params)
      session[:user_id] = current_user.id
      TeacherFacade.post_teacher(json_body)
      redirect_to teachers_dashboard_path
      flash[:success] = 'Account has been successfully created!'
    else
      redirect_to teachers_register_path
      flash[:error] = "Account not created: #{error_message(current_user.errors)}"
    end
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

  def teacher_params
    params.permit(:first_name, :last_name, :email, :phone_number, :address, :google_id, :google_image_url, :role)
  end

  def downcased_teacher_params
    teacher = teacher_params
    teacher[:email] = teacher[:email].downcase
    teacher
  end
end
