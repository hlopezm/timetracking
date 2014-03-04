class ProjectsController < ApplicationController
    
    def index
        @projects = Project.limit(10)
        if @projects.empty?
            render 'no_projects_exist'
        end

    end

    def show 
      if @project = Project.find_by(id: params[:id]) 
 	render 'show' 
      else 
 	render 'no_projects_found' 
      end 
    end 


end
