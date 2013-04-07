class Artist < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :bio, :name

  has_many :songs
  #has_many :samples
end
