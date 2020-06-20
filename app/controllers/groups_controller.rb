class GroupsController < ApplicationController
before_action :authenticate_user!
  def index
    @groups = Group.all.order("event_date DESC")
  end

  def new
    @group = Group.new
  end

  def create
    Group.create(group_params)
    redirect_to root_path
  end

  def search
    @groups = Group.search(params[:keyword])
  end

  private
  def group_params
    params.require(:group).permit(:name, :event_date)
  end

end
