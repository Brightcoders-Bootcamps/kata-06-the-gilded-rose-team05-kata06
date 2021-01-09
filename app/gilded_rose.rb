# frozen_string_literal: true

class GildedRose
  def initialize(items)
    @items = items
  end

  def update()
    @items.each do |item|
      update_item(item)
    end
  end 

  def update_quality(item, update)
    if item.quality == 0
      0
    elsif item.quality == 50
      50
    else
      item.quality += update 
      item.quality
    end
  end

  def update_sell_in(item, update)
    item.sell_in += update    
    item.sell_in
  end

  def update_item(item)
    if item.name != "Sulfuras, Hand of Rangnaros"
      if item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert"
        item.quality = update_quality(item,-1)
        item.quality = update_quality(item, -1) if item.sell_in < 0
      else
        if item.name == "Backstage passes to a TAFKAL80ETC concert"
          item.quality = update_quality(item,+2) if item.sell_in <= 10
          item.quality = update_quality(item,+1) if item.sell_in <= 5
          item.quality = udate_quality(item,0) if item.sell_in < 0
        elsif item.name == "Conjured Mana Cake"
          item.quality = update_quality(item,-2)
        else
          item.quality = update_quality(item,+1)
        end
      end
      item.sell_in = update_sell_in(item, -1)
    end
  end
end

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
