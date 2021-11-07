class Teachers::RegistrationController < ApplicationController
  def new
  end

  def edit
  end

  def create
  # add api service for posting user data to backend
    if current_user.save
      session[:user_id] = current_user.id
      flash[:success] = 'Account has been successfully created!'

      redirect_to teachers_dashboard_path
    else
      flash[:error] = "Account not created: #{error_message(current_user.errors)}"

      redirect_to new_user_path
    end
  end

  private

  def teacher_params
    require "pry"; binding.pry
    params.require(current_user).permit(:first_name, :last_name, :email, :phone_number, :address, :role)
  end

  def downcased_teacher_params
    teacher = teacher_params
    teacher[:email] = teacher[:email].downcase
    user
  end
end
