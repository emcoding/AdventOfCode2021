file = File.open("input1_1.txt")
@readings = file.readlines.map(&:to_i)
file.close

def count_deeper(data)
  data.each_cons(2).count do |previous, current|
    current > previous
  end
end

def count_deeper_trios
  count_deeper(tri_days)
end

def tri_days
  @readings.each_cons(3).map(&:sum)
end


part1 = count_deeper(@readings)
part2 = count_deeper_trios
puts [part1, part2]

#(maud:)test for future reference
puts part1 == 1451
puts part2 == 1395

#(maud:) notes for future reference
# example = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
# file = File.open("test_input1_1.txt")
