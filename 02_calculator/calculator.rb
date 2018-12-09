#write your code here
def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	sum = 0;
	array.each do |num|
		sum += num		
	end
	return sum
end

def multiply(a, b, *more)
	value = a * b
	more.each do |c|
		value *= c
	end
	return value
end

def power(num, pow)
	raised_num = num
	while pow > 1 do
		raised_num *= num
		pow -= 1
	end
	return raised_num
end

def factorial(num)
	factorial = 1
	i = num
	while i > 0 do
		factorial *= i
		i -= 1
	end
	return factorial
end