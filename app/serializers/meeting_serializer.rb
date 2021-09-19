class MeetingSerializer < BaseSerializer
  attributes :timeslot_id, :event_id, :requester_id, :receiver_id, :status

  belongs_to :user, record_type: :user
  belongs_to :event
end
