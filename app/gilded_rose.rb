# frozen_string_literal: true

# Class for GildedRose
class GildedRose
  def initialize(items)
    @items = items
  end

  def update
    @items.each do |item|
      update_item(item)
    end
  end

  def update_quality(item, update)
    new_quality = item.quality + update
    if new_quality.negative?
      0
    elsif new_quality >= 50
      50
    else
      new_quality
    end
  end

  def update_sell_in(item, update)
    item.sell_in += update
    item.sell_in
  end

  def update_item(item)
    if item.name != 'Sulfuras, Hand of Ragnaros'
      if item.name != 'Aged Brie' && item.name != 'Backstage passes to a TAFKAL80ETC concert'
        item.quality = update_quality(item, -1)
        item.quality = update_quality(item, -1) if item.name == 'Conjured Mana Cake'
        item.quality = update_quality(item, -1) if item.sell_in.negative? && item.name != 'Conjured Mana Cake'
      elsif item.name == 'Backstage passes to a TAFKAL80ETC concert'
        item.quality = update_quality(item, +1) if item.sell_in > 10
        item.quality = update_quality(item, +2) if item.sell_in <= 10
        item.quality = update_quality(item, +1) if item.sell_in <= 5
        item.quality = udate_quality(item, 0) if item.sell_in.negative?
      else
        item.quality = update_quality(item, +1)
      end
      item.sell_in = update_sell_in(item, -1)
    end
  end
end

# Class for item
class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
