# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../app/gilded_rose')
require File.join(File.dirname(__FILE__), '../app/texttest_fixture2')

RSpec.describe 'Item' do
  it 'this create an item ' do
    itemSpec = Item.new('item1', 2, 4)
    expect(itemSpec.name).to eq 'item1'
  end
end

RSpec.describe 'GildedRose' do
  it 'update the quality of the elements' do
    # itemSpec = Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    # ElementQuality = GildedRose.new(itemSpec)
    # ElementQuality.update_quality( itemSpec  , -1)
    # elemento =
    # expect(["Backstage passes to a TAFKAL80ETC concert", 14, 21]).to eq ["Backstage passes to a TAFKAL80ETC concert", 14, 21]
    # expect([ElementQuality(@item.name), itemSpec.sell_in, itemSpec.quality]).to eq ["Backstage passes to a TAFKAL80ETC concert", 14, 21 ]
  end
end

RSpec.describe 'texttest_fixture2' do
  it 'update de items in the array' do
    instancia_obj = Texttes_fixture.new
    expect(instancia_obj.method_run).to eq 2
  end
end
