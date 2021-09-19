class EventSerializer < BaseSerializer
  attributes :name

  has_many :meetings
  has_many :timeslots
  # has_many :timeslots do |object|
  #   SERVICE_TO_RETURN_TIMESLOTS
  # end
end
