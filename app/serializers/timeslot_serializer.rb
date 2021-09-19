class TimeslotSerializer < BaseSerializer
  # cache_options store: Rails.cache, namespace: 'jsonapi-serializer', expires_in: 1.hour
  attributes :event_id, :title, :reservable

  belongs_to :event
  has_many :timeslot_bookmarks
end
