class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by id: params[:id]
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new
    @actor.first_name = params[:actor][:first_name]
    @actor.last_name = params[:actor][:last_name]
    if @actor.save
      redirect_to actors_path
    else
      render :new
    end
  end

  def edit
    @actor = Actor.find_by id: params[:id]
  end

  def update
    @actor = Actor.find_by id: params[:id]
    @actor.first_name = params[:actor][:first_name]
    @actor.last_name = params[:actor][:last_name]
    if @actor.save
      redirect_to actor_path(id: @actor.id)
    else
      render :edit
    end
  end

  def delete
    @actor = Actor.find_by id: params[:id]
    @actor.destroy
    redirect_to actors_path
  end
end
