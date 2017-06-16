#
# Plato::Machine module
#
module Plato
  module Machine
    @@device = nil

    def self.register_device(device)
      @@device = device
    end

    def self.delay(ms)
      raise "Machine not initialized." unless @@device
      @@device.delay(ms)
    end

    def self.delay_us(us)
      raise "Machine not initialized." unless @@device
      @@device.delay_us(us)
    end

    def self.millis
      raise "Machine not initialized." unless @@device
      @@device.millis
    end

    def self.micros
      raise "Machine not initialized." unless @@device
      @@device.micros
    end
  end
end
