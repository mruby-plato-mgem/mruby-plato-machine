# Plato::Machine module

class M
  def self.delay(ms); ms; end
  def self.delay_us(us); us; end
  def self.millis; 0; end
  def self.micros; 0; end
end

assert('Machine', 'class') do
  assert_equal(Plato::Machine.class, Module)
end

assert('Machine', 'register_device') do
  assert_nothing_raised {
    Plato::Machine.register_device(nil)
  }
end

assert('Machine', 'delay') do
  assert_nothing_raised {
    Plato::Machine.register_device(M)
    Plato::Machine.delay(1)
  }
end

assert('Machine', 'delay - no device') do
  Plato::Machine.register_device(nil)
  assert_raise(RuntimeError) {Plato::Machine.delay(1)}
end

assert('Machine', 'delay_us') do
  assert_nothing_raised {
    Plato::Machine.register_device(M)
    Plato::Machine.delay_us(1)
  }
end

assert('Machine', 'delay_us - no device') do
  Plato::Machine.register_device(nil)
  assert_raise(RuntimeError) {Plato::Machine.delay_us(1)}
end

assert('Machine', 'millis') do
  assert_nothing_raised {
    Plato::Machine.register_device(M)
    Plato::Machine.millis
  }
end

assert('Machine', 'millis - no device') do
  Plato::Machine.register_device(nil)
  assert_raise(RuntimeError) {Plato::Machine.millis}
end

assert('Machine', 'micros') do
  assert_nothing_raised {
    Plato::Machine.register_device(M)
    Plato::Machine.micros
  }
end

assert('Machine', 'micros - no device') do
  Plato::Machine.register_device(nil)
  assert_raise(RuntimeError) {Plato::Machine.micros}
end
