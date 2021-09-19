class TimeslotBookmarkSerializer < BaseSerializer
  attributes :user_id, :timeslot_id
  attribute :timeslot do |object|
    object.timeslot
  end

  belongs_to :user
end
