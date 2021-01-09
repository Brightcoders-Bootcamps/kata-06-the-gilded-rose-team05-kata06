# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'gilded_rose')

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [Item.new('foo', 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq 'foo'
    end
  end

  describe '#update_quality' do
    it 'change the name' do
      items = [Item.new('',,)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq ''
  end
end