def benchmark
  start_time = Time.now
  long_string = "apple" * 1000
  end_time = Time.now
  running_time = end_time - start_time
  puts "string.reverse took #{running_time} seconds to run"
  # Your benchmarking code goes here.
end
running_time = benchmark { long_string.reverse }
benchmark()

# start_time = Time.now

# # Calculate the 200th Fibonacci number
# fibonacci(200)

# end_time = Time.now

# # This will return the difference in the timestamps in seconds
# running_time = end_time - start_time

# puts "fibonacci(200) took #{running_time} seconds."