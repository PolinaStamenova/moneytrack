class RemoveRefFromGroupAndMoneyTrack < ActiveRecord::Migration[6.1]
  def change
    remove_column :groups, :money_track_id
    remove_column :money_tracks, :group_id
  end
end
