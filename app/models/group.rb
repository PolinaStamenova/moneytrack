class Group < ApplicationRecord
  belongs_to :user
  has_many :money_groups
  has_many :money_tracks, through: :money_groups

  validates :name, presence: true, length: { maximum: 50 }

  def add_money_track(options)
    money_track = MoneyTrack.create!(name: options[:name], amount: options[:amount], user: options[:user])
    money_tracks << money_track
    money_track
  end
end
