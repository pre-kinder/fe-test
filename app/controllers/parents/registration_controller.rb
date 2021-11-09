class Parents::RegistrationController < ApplicationController
  def new
  end

  def edit
  end

  def create
    if current_user.update(downcased_parent_params)
      session[:user_id] = current_user.id
      ParentFacade.post_parent(downcased_parent_params)
      redirect_to parents_dashboard_path
      flash[:success] = 'Account has been successfully created!'
    else
      redirect_to parents_register_path
      flash[:error] = "Account not created: #{error_message(current_user.errors)}"
    end
  end

  private

  def parent_params
    params.permit(:first_name, :last_name, :email, :phone_number, :address, :role)
  end

  def downcased_parent_params
    parent = parent_params
    parent[:email] = parent[:email].downcase
    parent
  end
end
