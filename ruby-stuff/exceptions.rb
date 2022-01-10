# puts "give me an integer"
begin
  raise RuntimeError.new("error lol")
rescue => e
  # warn exception.message
  puts e
end
puts "done"