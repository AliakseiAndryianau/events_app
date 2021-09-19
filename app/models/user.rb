class User < ApplicationRecord
  # attr_accessor :id, :first_name, :last_name, :meeting_ids
  # has_many :meetings
  # has_many :timeslots
  has_many :timeslot_bookmarks
  has_many :timeslots, through: :timeslot_bookmarks
end
