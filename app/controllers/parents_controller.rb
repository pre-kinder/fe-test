class ParentsController < ApplicationController
  def index
    if params[:q].present?
      @forecast = ForecastFacade.get_forecast(params[:q])
    else
      flash[:error] = 'Please enter a valid city'
    end
  end

  def new
  end

  def create
  # add api service for posting user data to backend
    # teacher = current_user.update(downcased_teacher_params)
    if current_user.update(downcased_parent_params)
      session[:user_id] = current_user.id
      flash[:success] = 'Account has been successfully created!'

      redirect_to parents_path
    else
      flash[:error] = "Account not created: #{error_message(current_user.errors)}"

      redirect_to new_user_path
    end
  end

  def show
  end

  def edit
  end

  def children
    # parent = User.find(params[current_user.google_id])
    # @children = parent.children
  end

  private

  def parent_params
    params.permit(:first_name, :last_name, :email, :phone_number, :address, :role)
  end

  def downcased_parent_params
    parent= parent_params
    parent[:email] = parent[:email].downcase
    parent
  end
end
