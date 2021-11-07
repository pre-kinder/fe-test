class Teachers::RegistrationController < ApplicationController
  def new
  end

  def edit
  end

  def create
  # add api service for posting user data to backend
    # teacher = current_user.update(downcased_teacher_params)
    if current_user.update(downcased_teacher_params)
      session[:user_id] = current_user.id

      redirect_to teachers_dashboard_path
      flash[:success] = 'Account has been successfully created!'
    else
      redirect_to teachers_register_path
      flash[:error] = "Account not created: #{error_message(current_user.errors)}"
    end
  end

  private

  def teacher_params
    params.permit(:first_name, :last_name, :email, :phone_number, :address, :role)
  end

  def downcased_teacher_params
    teacher = teacher_params
    teacher[:email] = teacher[:email].downcase
    teacher
  end
end
