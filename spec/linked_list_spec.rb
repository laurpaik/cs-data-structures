# frozen_string_literal: true

require_relative '../lib/linked_list.rb'

RSpec.describe LinkedList do
  context 'initialized without arguments' do
    list = LinkedList.new
    it 'is of class LinkedList' do
      expect(list.class).to eq(LinkedList)
    end
  end
end
