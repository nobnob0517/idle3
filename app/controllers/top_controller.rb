class TopController < ApplicationController

def index
    @q_projects = Project.search(params[:q])
    @projects = @q_projects.result(distinct: true)
end

end