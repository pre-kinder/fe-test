class Teachers::RegistrationController < ApplicationController
  def new
  end

  def edit
  end

  def create
     TeacherFacade.post_teacher(downcased_teacher_params)
  end

  private

  def teacher_params
    params.require(current_user).permit(:first_name, :last_name, :email, :phone_number, :address, :role)
  end

  def downcased_teacher_params
    teacher = teacher_params
    teacher[:email] = teacher[:email].downcase
    user
  end
end
