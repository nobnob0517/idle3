class ProjectsController < ApplicationController

  def index
    @project = Project.includes(:user).page(params[:page]).per(5).order("created_at DESC")
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

  def edit
  end

  def update
  end

  def show
    @project = Project.find(params[:id])
  end

end
end