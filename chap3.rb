class Gear #チェーリングとコグ、比。
  attr_reader :cahinring, :cog

  def initialize(args)
    @cahinring = args.fetch(:cahinring, 40)
    @cog = args.fetch(:cog, 40)
  end

  def ratio
    cahinring / cog.to_f
  end

  def gear_inches(diameter)
    ratio * diameter
  end
end






class Wheel
  attr_reader :rim, :tire, :gear

  def initialize(rim, tire, cahinring, cog)
    @rim = rim
    @tire = tire
    @gear = Gear.new({cahinring: => 52, cog: => 11})
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end

  def gear_inches
    gear.gear_inches(diameter)
  end
end

@wheel = Wheel.new(26, 1.5, 52, 11)
puts @wheel.diameter
puts @wheel.gear_inches
