class SecretsController < ApplicationController
	before_action :require_login
	
	def new 
	end

	def show
		# return head(:forbidden) unless session.include? :user_id
		#@secret = Secret.find(params[:id])
	end

	private 

	def require_login 
		unless session[:name]
			redirect_to login_path
		end
	end 
end

