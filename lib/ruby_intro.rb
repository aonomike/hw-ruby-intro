# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # if arr.empty? || arr.length == 1
  #   return false
  # else
  #   sum_to_num = false
  #   arr.each_with_index do |x, i|
  #     sliced_arr = arr.slice(i)
  #     sliced_arr.each do |y|
  #       require 'pry'
  #       binding.pry
  #       sum_to_num = ((x + y) == n )
  #       break if sum_to_num == false
  #     end
  #     break if sum_to_num == false
  #   end
  # end
  # adds_to_num = false
  # arr.combination(2) do |a,b|
  #   adds_to_num = ((a + b) == n)
  #   break if adds_to_num == true
  # end
  # return adds_to_num
  # require 'pry'
  # binding.pry
  arr.combination(2).find { |a, b| a + b == n } ? true : false


end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[^a,e,i,o,u\w]/i =~ s
end

def binary_multiple_of_4? s

  s.match?(/^[10]+00$/) || s == '0'
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :price, :isbn

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if @isbn.empty? || @price <= 0
  end

  def price_as_string
    sprintf("$%.2f", @price)
  end
end
