class EntriesController < ApplicationController
	def index
		@project = Project.find params[:project_id]
		@entries = @project.entries
    render 'index' layout: 'project' 
	end
	
	def show
    @project = Project.find_by(id: params[:id])
    @entry = Entry.find_by(id: params[:id])
  end

  def new
    @project = Project.find params[:project_id]
    @entry = @project.entries.new
  end

  def create
     @project = Project.find params[:project_id]
     @entry = @project.entries.new entry_params
     if @entry.save
       redirect_to action: 'index', controller: 'entries', project_id: @project.id
     else
       render 'new'
     end
  end

  private

  def entry_params
    params.require(:entry).permit(:hours, :minutes, :date)
  end
end
