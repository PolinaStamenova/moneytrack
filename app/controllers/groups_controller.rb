class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def index
    @groups = Group.where(params[:id]).order(created_at: 'DESC')
  end

  def show
    @group = Group.find(params[:id])
    @group_money_tracks = @group.money_tracks.order(created_at: "DESC")
  end

  def create
    @group = current_user.groups.create(group_params)
    flash[:notice] = if @group.save
      'Category was successfully added!'
      redirect_to moneytrack_path
    else
      'Category was not added!'
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
