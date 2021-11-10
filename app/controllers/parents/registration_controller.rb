class Parents::RegistrationController < ApplicationController
  def new
  end

  def edit
  end

  def create
   ParentFacade.post_parent(downcased_parent_params)
  end

  private

  def parent_params
    params.require(current_user).permit(:first_name, :last_name, :email, :phone_number, :address, :role)
  end

  def downcased_parent_params
    parent = parent_params
    parent[:email] = parent[:email].downcase
    user
  end
end
