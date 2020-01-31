# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length > 0
    return arr.sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.max(2).sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for x in (0..arr.length-1)
    for y in (x+1..arr.length-1)
      if arr[x]+arr[y] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ""
    return false
  end
  return "bcdfghjklmnpqrstvwxyz".include?(s[0].downcase)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ""
    return false
  end
  s.each_char{|x| return false if x != "0" && x != "1"} # Couldn't use for each loop because they don't work with strings
  if s[s.length-1] == "0" && s[s.length-2] == "0" # Could've also used if s.to_i(2) % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(i, p)
    if i.size == 0
      raise ArgumentError.new("Incorrect input arguments. Input an ISBN")
    elsif p <= 0
      raise ArgumentError.new("Incorrect input arguments. Input a price")
    else
      @isbn = i
      @price = p
    end
  end
  
  def isbn
    @isbn
  end
    
  def price
    @price
  end
  
  def isbn=(i)
    @isbn = i
  end

  def price=(p)
    @price = p
  end
  
  def price_as_string
    return "$%0.2f"%[@price]
  end
end