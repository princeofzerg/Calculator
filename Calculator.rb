puts "Welcome to Loc Ho Calculator"
puts "Press x to multiply, + to add, - to substract and / to divide"
puts "Begin"
puts "Please enter the first number"
result=0
number_1=gets.chomp
while number_1!=number_1.to_i.to_s
  puts "please enter a valid number"
  number_1=gets.chomp
end
puts "Press x to multiply, + to add, - to substract and / to divide"
operator=gets.chomp
number_1=number_1.to_f
while operator !='+' && operator != '-' && operator != 'x' && operator != '/'
  puts "Please try again"
  puts "Press x to multiply, + to add, - to substract and / to divide"
  operator=gets.chomp
end
puts "Please enter the second number"
number_2=gets.chomp
while number_2!=number_2.to_i.to_s
puts "please enter a valid number"
number_2=gets.chomp
end
number_2=number_2.to_f
case operator
when '+'
  result=number_1+number_2
when '-'
  result=number_1-number_2
when 'x'
  result=number_1*number_2
else
  result=number_1/number_2
end
result=result.to_f
puts "Result is :#{result}"
puts "Do you want to continue"
continue=gets.chomp
while continue == 'y'
  puts "Press x to multiply, + to add, - to substract and / to divide"
  operator=gets.chomp
  while operator!='+' && operator!='-' && operator!= 'x' && operator!= '/'
    puts "Please try again"
    puts "Press x to multiply, + to add, - to substract and / to divide"
    operator=gets.chomp
  end
  puts "Please enter another number"
  number_3=gets.chomp
  while number_3!=number_3.to_i.to_s
  puts "please enter a valid number"
  number_3=gets.chomp
  end
  number_3=number_3.to_f

  case operator
  when '+'
    result=result+number_3
  when '-'
    result=result-number_3
  when 'x'
    result=result*number_3
  else
    result=result/number_3
  end
  puts "The result is :#{result}"
  puts "Do you want to continue yes-y, no-any other keys:"
  continue=gets.chomp
end
  puts "The final result is :#{result}"
