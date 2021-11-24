module MoneyTracksHelper
  def group_id
    params.dig(:money_track, :group_id) || params[:group_id]
  end

end
