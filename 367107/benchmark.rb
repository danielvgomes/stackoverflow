require "benchmark"

n = 100000
Benchmark.bmbm do |x|
  x.report("<<") do
    foo = "foo"
    n.times do
      foo << "bar"
    end
  end

  x.report("+=") do
    foo = "foo"
    n.times do
      foo += "bar"
    end
  end
end
