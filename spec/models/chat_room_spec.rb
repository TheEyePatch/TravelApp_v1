require 'rails_helper'

RSpec.describe ChatRoom, type: :model do
  let!(:chat_room) { described_class.new }


  context 'with validations of relationship' do
    it 'belongs to agency' do
      expect(chat_room).to belong_to(:agency)
    end

    it 'belongs to a tourist' do
      expect(chat_room).to belong_to(:tourist)
    end
  end
end
