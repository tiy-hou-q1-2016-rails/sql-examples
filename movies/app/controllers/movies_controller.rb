class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by id: params[:id]
  end

  def new
    @movie = Movie.new
  end

  def create
    # get the object
    @movie = Movie.new
    # set the fields
    @movie.title = params[:movie][:title]
    # save and redirect
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find_by id: params[:id]
  end

  def update
    #get object
    @movie = Movie.find_by id: params[:id]
    #set fields
    @movie.title = params[:movie][:title]
    # save and handle redirect
    if @movie.save
      redirect_to movie_path(id: @movie.id)
    else
      render :edit
    end
  end

  def delete
    @movie = Movie.find_by id: params[:id]
    @movie.destroy
    redirect_to movies_path
  end
end
