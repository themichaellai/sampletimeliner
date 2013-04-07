class Song < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :name, :youtube_id
  belongs_to :user
  belongs_to :artist
  has_many :samples

  validates :name, presence: true
  validates :youtube_id, presence: true
end
