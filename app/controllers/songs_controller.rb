class SongsController < ApplicationController

  def index
    @songs = Song.paginate( page: params[:page], per_page: 12)

    # respond_to do |format|
    #   format.html
    #   format.xml { render :xml => @pieces}
    # end
  end
  
  # def new
  #   @piece = Piece.new
  #   respond_to do |format|
  #     format.html
  #   end
  # end
  
  # def create
  #   @piece = Piece.new(params[:piece])
  #   respond_to do |format|
  #     if @piece.save
  #       format.html { redirect_to(admin_music_index_path) }
  #     else
  #       format.html { render :action => :new }
  #     end
  #   end
  # end
  
end