class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if (@user.save)
			redirect_to action: 'index'
		else
			render "new"
		end
	end

private

    def user_params
      params.require(:user).permit(:username, :password)
    end
end