# frozen_string_literal: true

module Queries
  class User
    QUERY_TYPES = %w[by_active_meets by_bookmarked_timeslots].freeze

    def call(query_type, user_id)
      raise 'Unpermitter query type!' unless query_type&.in?(QUERY_TYPES) || query_type.nil?

      send(query_type, user_id)
    end

    private

    def by_active_meets(user_id)
      Timeslot.joins(:event, timeslot_bookmarks: :user, event: :meetings).where(
        timeslot_bookmarks: { user_id: user_id }, meetings: { status: [0, 1, 4] }
      ).uniq
    end

    #to be implemented
    def by_bookmarked_timeslots; end

  end
end
