require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'It should fail if we try to create an event without a creator_id' do
    expect(Event.new).to_not be_valid
  end
end
