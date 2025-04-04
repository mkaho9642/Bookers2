class ApplicationRecord < ActiveRecord::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  self.abstract_class = true
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
