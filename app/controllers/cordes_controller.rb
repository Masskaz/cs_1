class CordesController < ApplicationController
	before_action :authenticate_user! 
	
	def new
		@corde_new = Corde.new
	end

	# def index
	# 	@cordes = Corde.all
	# end

	# def show
	# end

	# def create
	# 	corde = Corede.new(corde_params)
	# 	corde.save
	# 	redirect_to cordes_path
	# end

private
	def corde_params
		params.require(:corde).permit(:item_id,:corde_name,:image,:season)
	end
end
