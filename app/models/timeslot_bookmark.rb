class TimeslotBookmark < ApplicationRecord
  belongs_to :user
  belongs_to :timeslot
end
