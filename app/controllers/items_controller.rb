class ItemsController < ApplicationController
	before_action :authenticate_user! 
	# belongs_to :user

	def new
		@item_new = Item.new
	end

	def index
		@items = Item.page(params[:page]).reverse_order
	end

	def show
	end

	def create
		@item =Item.new(item_params)
		@item.save
		redirect_to items_path
	end

private
	def item_params
		params.require(:item).permit(:photo,:genre,:category,:brand,:season)
	end

end
