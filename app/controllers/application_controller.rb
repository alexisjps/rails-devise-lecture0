class ApplicationController < ActionController::Base
 # ici je code un coportement spéficique sign_in sign_up
 before_action :authenticate_user!
 before_action :configure_permitted_parameters, if: :devise_controller?

 private

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :age])
 end
end
