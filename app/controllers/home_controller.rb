class HomeController < ApplicationController
  def index
    @groupsCount = Group.count
    @usersCount = User.count
    @projectsCount = Project.count
    @projects = Project.limit(3).order("RANDOM()")
  end
end
