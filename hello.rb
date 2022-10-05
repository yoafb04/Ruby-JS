
def my_function
   headers = ['"Autor":      ', '"Publisher":      ', '"URL":      ']
   mylines = []
   i = 0
   puts ("{\r\n")
   puts ('   "Citation: "   {')

   File.readlines('test.txt').each do |line|
      mylines << line
  end

  for b in headers do
   puts "      #{b} " + '"' + mylines[i] 
   i = i + 1
  end

  puts ("     }\r\n")
  puts("}")

end

 @result = my_function

