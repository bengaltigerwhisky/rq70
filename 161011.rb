numbers = [1,14,14,4,11,7,6,9,8,10,10,5,13,2,3,15]

result = []
i = 0
numbers.combination(5).to_a.each {|num|
  result[i] = num.inject(:+)
  i = i+1
}

numbers.combination(6).to_a.each {|num|
  result[i] = num.inject(:+)
  i = i+1
}

p result