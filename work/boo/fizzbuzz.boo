#fizzbuzz.boo
for i in range(1, 101):
	n = ""
	if (i%3==0):
		n += "Fizz"
	if (i%5==0):
		n += "Buzz"
	if (i%3!=0) and (i%5!=0):
		n = i.ToString()
	print n
