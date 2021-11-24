class MoneyTracksController < ApplicationController
  def new
    # @group_id = group_id
    @group = Group.find(params[:group_id])

    @money_track = MoneyTrack.new
  end

  def create
    @group = Group.find(group_id)
    @money_track = @group.add_money_track(money_track_params)
    redirect_to @group

  rescue ActiveRecord::RecordInvalid
    render :new, group_id: group_id
  end

  private

  def group_id
    params.dig(:money_track, :group_id) || params[:group_id]
  end

  def money_track_params
    params.require(:money_track).permit(:name, :amount).merge(user: current_user)
  end
end
