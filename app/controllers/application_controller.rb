class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
# before_action: :require_login
	
	def current_user
	  current_user ||= session[:name] 
	end
	
	# def require_login 
	#   if !current_user
	# 	redirect_to "/"
	#   end
	# end	 
end
