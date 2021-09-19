class Timeslot < ApplicationRecord
  belongs_to :event
  has_many :timeslot_bookmarks
  # belongs_to :meeting
end
