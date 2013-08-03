class SetlistsController < ApplicationController

	def index
		@setlists = current_user.setlists
	end

	def new
		@setlist = Setlist.new
	end

	def create
		@setlist = Setlist.new(params[:setlist])
		current_user.setlists << @setlist
		if @setlist.save
			flash[:success] = "Setlist successfully created"
			redirect_to setlists_path
		else
	        render 'new'
	    end
	end

	def destroy
		Setlist.find(params[:id]).destroy
		flash[:alert] = "Setlist successfully deleted"
		redirect_to :back
	end

end
