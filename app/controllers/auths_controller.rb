class AuthsController < ApplicationController
	def new
		if current_user
			redirect_to root_path
		else 
			@user=User.new
		end	
	end

	def create
		if !(User.where(username: params[:user][:username]).empty?)
			@user = User.find_by(username: params[:user][:username])
			if @user.check_password(params[:user][:password])
				session[:user_id] = @user.id
				redirect_to root_path 
			else 
				redirect_to 'new'
			end
				else
					@user = User.new(username: params[:user][:username])
					render new_auth_path
				
		end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_path
	end
end