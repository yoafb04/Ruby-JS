
def my_function
   headers = ['"Autor":      ', '"Publisher":      ', '"URL":      ']
   mylines = []
   i = 0

   # Creating aand writing into a file
   fileobject = File.new("JSFILE.json", "w+");
   fileobject.syswrite("{\r\n");	
   fileobject.syswrite('   "Citation: "   {' + "\r\n");	


   File.readlines('test.txt').each do |line|
      mylines << line
  end

  for b in headers do
   str ="      #{b} " + '"' + mylines[i]  
   fileobject.syswrite(str.chop + '"' + "," + "\r\n");	

   i = i + 1
  end

  fileobject.syswrite("\r\n  }\r\n");
  fileobject.syswrite("}");

end

 @result = my_function



