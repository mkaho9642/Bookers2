class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
