class ProjectsController < ApplicationController
http_basic_authenticate_with name: "admin", password: "3132", except: [:index, :show]

def index
  @projects = Project.all
end

def show
  @project = Project.find(params[:id])
end

def new
  @project = Project.new
end

def edit
  @project = Project.find(params[:id])
end

def create
  @project = Project.new(project_params)

  if @project.save
    redirect_to @project
  else
    render 'new'
  end
end

def update
  @project = Project.find(params[:id])
  if @project.update(project_params)
    redirect_to @project
  else
    render 'edit'
  end
end

def destroy
  @project = Project.find(params[:id])
  @project.destroy

  redirect_to project_path
end

private
def project_params
  params.require(:project).permit(:name, :summary, :start_date, :end_date)
end
end

