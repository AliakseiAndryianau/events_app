# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserSerializer do
  subject { described_class.new(user, { params: { query_type: query_type}}).serializable_hash }

  let!(:user) { create(:user) }
  let(:query_type) { 'by_active_meets' }
  let!(:timeslot_bookmark) { create(:timeslot_bookmark, timeslot_id: timeslot.id, user_id: user.id) }
  let!(:timeslot) { create(:timeslot, event_id: 1) }
  let!(:timeslot2) { create(:timeslot, event_id: 1) }
  let(:expected_result) do
    {
      data:
        {
          id: user.id.to_s,
          type: :user,
          attributes: {
            first_name: user.first_name,
            last_name: user.last_name,
            company_name: user.company_name,
            company_title: user.company_title,
          },
          relationships: {
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

  context 'with by_active_meets strategy parameter' do
    it 'provides serilized hash with valid attributes' do
      expect(subject).to eq(expected_result)
    end
  end
end
