class Group < ApplicationRecord
  belongs_to :user
  has_many :money_tracks, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
