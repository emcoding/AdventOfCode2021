file = File.open("input1_1.txt")
@readings = file.readlines.map(&:to_i)
file.close

def count_deeper(data, group_size = 1)
  groups = data.each_cons(group_size).map(&:sum)

  groups.each_cons(2).count do |previous, current|
    current > previous
  end
end

part1 = count_deeper(@readings)
part2 = count_deeper(@readings, 3)
puts [part1, part2]

#(maud:)test for future reference
puts part1 == 1451
puts part2 == 1395

#(maud:) notes for future reference
# example = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
# file = File.open("test_input1_1.txt")
