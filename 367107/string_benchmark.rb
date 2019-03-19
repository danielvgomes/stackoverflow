require 'benchmark'

ITERATIONS = 1000000

def run(str, bench)
  bench.report("#{str.length + 1} chars") do
    ITERATIONS.times do
      new_string = str + 'x'
    end
  end
end

Benchmark.bm do |bench|
  
  run("8901234567890", bench)
  run("78901234567890", bench)
  run("678901234567890", bench)
  run("5678901234567890", bench)
  run("45678901234567890", bench)
  run("345678901234567890", bench)
  run("2345678901234567890", bench)
  run("12345678901234567890", bench)
  run("123456789012345678901", bench)
  run("1234567890123456789012", bench)
  run("12345678901234567890123", bench)
  run("123456789012345678901234", bench)
  run("1234567890123456789012345", bench)
  run("12345678901234567890123456", bench)
  run("123456789012345678901234567", bench)
  run("1234567890123456789012345678", bench)
  run("12345678901234567890123456789", bench)
  run("123456789012345678901234567890", bench)
  run("1234567890123456789012345678901", bench)
  run("12345678901234567890123456789012", bench)

  run("a"*20, bench)
  run("a"*21, bench)
  run("a"*22, bench)
  run("a"*23, bench)
  run("a"*24, bench)
  run("a"*25, bench)
  run("a"*26, bench)
  run("a"*27, bench)
end
