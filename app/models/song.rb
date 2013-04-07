class Song < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :artist, :name, :youtube_id
  belongs_to :user
  has_many :samples

  validates :artist, presence: true
  validates :name, presence: true
  validates :youtube_id, presence: true
end
