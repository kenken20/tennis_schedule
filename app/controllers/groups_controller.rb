class GroupsController < ApplicationController
before_action :authenticate_user!
  def index
    @groups = Group.all
  end

  def new
    @groups = Group.new
  end

end
