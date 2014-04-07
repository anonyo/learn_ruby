def measure(a=1)
  before = Time.now
  a.times {yield}
  after = Time.now
  elapsed_time = (after - before) / a
end

