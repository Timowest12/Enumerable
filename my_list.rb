require_relative 'my_enumerable'

# class MyList
class Mylist
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
end

list = Mylist.new(1, 2, 3, 4)

list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
list.filter?(&:even?)
