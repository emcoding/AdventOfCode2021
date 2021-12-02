#toggle filename for testing
# file_name = "example.txt"
file_name = "input.txt"

steps = File.readlines(file_name).map {|line| line.split(' ') }

VERTICAL = {
  up:   :-,
  down: :+,
}

x = 0; y = 0; aim = 0
steps.map do |direction, move|
  direction, move = [direction.to_sym, move.to_i]

  if direction == :forward
    x += move
    y += move * aim
  else
    aim = [aim, move].inject(VERTICAL[direction])
  end
end

report =  x * y
puts report

#tests
#part 2
  puts x == 1996
  puts y == 972980
  puts report == 1942068080


# part 2 example
# puts x == 15
# puts y == 60
# # puts @position == [15,10]
# puts secret == 900

# part 1 example
# puts x == 15
# puts y == 10
# puts report == 150





