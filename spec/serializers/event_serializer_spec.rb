# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EventSerializer do
  subject { described_class.new(event).serializable_hash }

  let!(:event) { create(:event) }
  let!(:requester) { create(:user) }
  let!(:receiver) { create(:user) }
  let!(:timeslot) { create(:timeslot, event_id: event.id) }
  let!(:meeting) do
    create(
      :meeting,
      event_id: event.id,
      requester_id: requester.id,
      receiver_id: receiver.id,
      timeslot_id: timeslot.id
    )
  end
  let(:expected_result) do
    {
      data:
        {
          id: event.id.to_s,
          type: :event,
          attributes: {
            name: event.name,
          },
          relationships: {
            meetings: {
              data: [
                {
                  id: meeting.id.to_s,
                  type: :meeting
                }
              ]
            },
            timeslots: {
              data: [
                {
                  id: timeslot.id.to_s,
                  type: :timeslot
                }
              ]
            }
          }
        }
    }
  end

  it 'provides serilized hash with valid attributes' do
    expect(subject).to eq(expected_result)
  end
end
