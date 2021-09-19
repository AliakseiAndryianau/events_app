class Event < ApplicationRecord
  has_many :timeslots
  has_many :meetings
end
