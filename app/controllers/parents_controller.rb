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
    if current_user.update(downcased_parent_params)
      session[:user_id] = current_user.id
      ParentFacade.post_parent(json_body)
      redirect_to parents_path
      flash[:success] = 'Account has been successfully created!'
    else
      redirect_to "/parents/new"
      flash[:error] = "Account not created: #{error_message(current_user.errors)}"
    end
  end

  def show

  end

  def edit

  end

  def update
    ParentFacade.update_parent_profile(json_body)
    flash[:success] = 'Your profile has been updated!'
    redirect_to '/parents/edit'
  end

  def children
    #@children = ParentFacade.get_all_children(current_user.google_id)
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

  def parent_params
    params.permit(:first_name, :last_name, :email, :phone_number, :address, :google_id, :google_image_url, :role)
  end

  def downcased_parent_params
    parent= parent_params
    parent[:email] = parent[:email].downcase
    parent
  end
end
