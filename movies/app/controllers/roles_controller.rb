class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new
    @role.actor_id = params[:role][:actor_id]
    @role.movie_id = params[:role][:movie_id]
    @role.character = params[:role][:character]
    if @role.save
      redirect_to roles_path
    else
      render :new
    end
  end
end
