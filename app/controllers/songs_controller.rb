class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    #byebug
   @song = Song.new
   @song.name = params[:song][:name]
   @song.genre_id = params[:song][:genre_id]
   @song.artist_id = params[:song][:artist_id]
   @song.save
    redirect_to song_path(@song)
  end


	def edit
		@song = Song.find(params[:id])
	end

	def update
	  @song = Song.find(params[:id])
		@song.update(params.require(:artist).permit(:name, :genre_id, :artist_id)
	  redirect_to song_path(@song)
	end

end
