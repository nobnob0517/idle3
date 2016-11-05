class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
  end

  def create
    Project.create(image: params[:image], title: params[:text], price: params[:price], adress: params[:adress], explain: params[:explain], user_id: current_user.id)
  end

  def destroy
    project = Project.find(params[:id])
    if project.user_id == current_user.id
      project.destroy
  end
  end

  def edit
  end


  def update
  end


  def show
    @project = Project.find(params[:id])
  end



end
