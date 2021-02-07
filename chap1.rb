class Gear #チェーリングとコグ、比。
  attr_reader :cahinring, :cog, :wheel

  def initialize(cahinring, cog, wheel=nil)
    @cahinring = cahinring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    cahinring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end






class Wheel
  attr_reader :rim, :tire

  # attr_readerによるデフォルトの実装
  # def con
  #   @cog
  # end

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter # 車輪の直径 = リムの直径 + (タイヤの厚み * 2)　配列の構造に依存している
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

@wheel = Wheel.new(26, 1.5)
puts "# @wheel"
puts @wheel.circumference
puts ""


puts "# gear_inches"
puts Gear.new(52, 11, @wheel).gear_inches
puts ""
puts "# ratio"
puts Gear.new(52, 11).ratio




# class Obscuraring
#   attr_reader :data
#   def initialize(data)
#     @data = data
#   end

#   def diameters
#     data.collect { |cell| cell[0] + (cell[1] * 2) }
#   end
# end
