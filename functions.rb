require "pry"




def addNumbers (a, b)
total = 0
total =  a + b
end










a = 3
b = 7
actual = addNumbers(a, b)
expected = 10


if actual != expected
	puts "Fail"
else
	puts "Success"
end