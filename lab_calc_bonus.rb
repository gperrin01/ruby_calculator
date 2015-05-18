### FUNCTIONS
def correct_operator(math_op, op_list=[])
  # user re-inputs operator until it is one of the authorized values
  math_op = gets.chomp
  until op_list.index(math_op) != nil
    print 'Please choose correct operator: '
    math_op = gets.chomp.downcase
  end
  math_op
end

def calc_basics
  print 'Type first number: '
  num1 = gets.to_f
  print 'Choose operation to perform (+,-,x,/): '
  math_op = correct_operator(math_op, ['+', '-', 'x', '/'])
  print 'Type second number: '
  num2 = gets.to_f

  case math_op
  when '+'
    puts num1 + num2
  when '-'
    puts num1 - num2
  when 'x'
    puts num1 * num2
  when '/'
    puts num1 / num2
  end
end  
# end calc_basics

def calc_advanced
  print 'Type first number: '
  num1 = gets.to_f
  print '(p)ower or (s)quare?: '
  math_op = correct_operator(math_op, ['p', 's'])

  if math_op == 'p'
    print 'Type second number: '
    num2 = gets.to_f
    puts num1**num2
  elsif math_op == 's'
    puts Math.sqrt(num1)
  end
end  
# end calc_advanced

def calc_mortgage
  print 'Loan in £: '
  loan = gets.to_f
  print 'APR in %: '
  apr = gets.to_f / 100 / 12
  print 'Term in months: '
  term = gets.to_f
  
  temp = (1+apr)**term
  payment = (loan * apr * temp / (temp - 1)).round(2)
  puts "Monthly payment: £#{payment}"
end

def calc_bmi
  print 'Mass in kg: '
  mass = gets.to_f
  print 'Height in meters: '
  height = gets.to_f

  bmi = (mass / (height**2) ).round(2)
  puts "BMI: #{bmi}"
end

def calc_trip
  print 'Distance in miles: '
  dist = gets.to_f
  print 'MPG: '
  mpg = gets.to_f
  print 'Cost in £/gallon: '
  cost = gets.to_f
  print 'Speed in mph: '
  speed = gets.to_f

  time = (dist / speed).round(2)

  if mpg > 60 
    actualMPG = [0, mpg - 2*(speed-60)].max
  else actualMPG = mpg
  end

  cost = (dist / actualMPG * cost).round(2)
  puts "Your trip will take #{time} hours and cost $#{cost}"
end


##### 
#THE MAIN FUNCTION
##########

def calc_it
  system "clear"
  puts '*** Calc It ***'
  print 'Select (b)asic, (a)dvanced, (m)ortgage, (bmi), (t)rip, or (q)uit: '
  calc_type = gets.chomp.downcase

  # while calc_type != 'q'
  return  if calc_type =='q'

  case calc_type
  when 'b'
    calc_basics
  when 'a'
    calc_advanced
  when 'm'
    calc_mortgage
  when 'bmi'
    calc_bmi
  when 't'
    calc_trip
  end

  print 'press any key to start again, or (q) to quit: '
  instruction = gets.chomp.downcase
  if instruction == 'q'
    return
  else 
    calc_it
  end

end

calc_it








  