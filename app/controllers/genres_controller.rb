class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    #byebug
   @genre = Genre.new
   @genre.name = params[:genre][:name]
   @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
      @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    #byebug
		@genre.update(name: params[:genre])
	  redirect_to genre_path(@genre)
  end

end
