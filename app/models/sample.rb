class Sample < ActiveRecord::Base
  attr_accessible :artist, :name, :song_id, :youtube_id, :second_offset, :start, :duration
  belongs_to :song

  validates :artist, presence: true
  validates :name, presence: true
  validates :youtube_id, presence: true
  validates :second_offset, presence: true
  validates :start, presence: true
  validates :duration, presence: true
end
