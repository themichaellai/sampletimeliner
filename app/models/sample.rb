class Sample < ActiveRecord::Base
  attr_accessible :artist, :name, :song_id, :youtube_id, :second_offset
  belongs_to :song

  validates :artist, presence: true
  validates :name, presence: true
  validates :youtube_id, presence: true
  validates :second_offset, presence: true
end
