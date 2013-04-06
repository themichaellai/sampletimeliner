class Song < ActiveRecord::Base
  attr_accessible :artist, :name, :youtube_id
  belongs_to :user
end
