class AddRefToGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :money_track, null: false, foreign_key: true
  end
end
