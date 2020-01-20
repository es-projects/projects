class HomeController < ApplicationController
  def index
    @groups = Group.count
    @users = User.count
    @projects = Project.count
  end
end
