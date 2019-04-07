class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :current_user
	# has_many :items

	def show
		@user = User.find(params[:id])
		@items = Item.page(params[:page]).reverse_order
	end


	def edit
		@user = User.find(params[:id])
	end

private
	def user_params
		params.require(:user).permit(:name,:email)
	end


end
