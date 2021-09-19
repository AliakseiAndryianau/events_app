class Meeting < ApplicationRecord
  enum status: %w(pending accepted rejected cancelled rescheduled)
  belongs_to :event
  has_one :timeslot
  belongs_to :requester, foreign_key: "requester_id", class_name: 'User'
  belongs_to :receiver, foreign_key: "receiver_id", class_name: 'User'
end
