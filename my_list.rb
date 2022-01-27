require_relative 'Enumerable'

class Mylist
include MyEnumerable
    def initialize(*list)
        @list = list
    end
end

list = Mylist.new(1, 2, 3, 4)

puts list.all? {|e| e < 5}
puts list.all? {|e| e > 5}
puts list.any? {|e| e == 2}
puts list.any? {|e| e == 5}
puts list.filter? {|e| e.even?}