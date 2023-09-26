class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:role , :name, :class_name_id])
  end
  
  def update
    if current_school_login.update(user_params)
      # Handle successful update, e.g., redirect to a different page
    else
      # Handle update failure, e.g., render the edit page with errors
    end
  end
  
  private
  
  def user_params
    params.require(:school_login).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

end
