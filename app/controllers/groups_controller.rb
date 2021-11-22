class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def index
    @gropus = Group.where(params[:id]).order(created_at: 'DESC')
  end

  def show
  end
end
