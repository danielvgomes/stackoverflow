require "benchmark"

n = 100000
Benchmark.bmbm do |x|
  x.report("<<") do
    foo = "aaaaaaaaaaaaaaaaaaaaaaa"
    n.times do
      foo << 'a'
    end
  end

  x.report("+=") do
    foo = "aaaaaaaaaaaaaaaaaaaaaaa"
    n.times do
      foo += 'a'
    end
  end
end
