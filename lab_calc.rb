### FUNCTIONS
def calcs(num1, num2, math_op)
  case math_op
  when '+'
    puts num1 + num2
  when '-'
    puts num1 - num2
  when 'x'
    puts num1 * num2
  when '/'
    puts num1 / num2
  when 'p'
    puts num1**num2
  when 's'
    puts Math.sqrt(num1)
  end
end

def correct_operator(math_op, op_list=[])
  # user re-inputs operator until it is one of the authorized values
  math_op = gets.chomp
  until op_list.index(math_op) != nil
    print 'Please choose correct operator: '
    math_op = gets.chomp.downcase
  end
  math_op
end

##### 
#THE CODE
##########

print 'Select (b)asic or (a)dvanced calculator: '
calc_type = gets.chomp.downcase
print 'Type first number: '
num1 = gets.to_f

if calc_type == 'b'

  print 'Choose operation to perform (+,-,x,/): '
  math_op = correct_operator(math_op, ['+', '-', 'x', '/'])

  print 'Type second number: '
  num2 = gets.to_f
  puts calcs(num1, num2, math_op)

elsif calc_type == 'a'

  print '(p)ower or (s)quare?: '
  math op = correct_operator(math_op, ['p', 's'])

  if math_op == 'p'
    print 'Type second number: '
    num2 = gets.to_f
    puts calcs(num1, num2, math_op)
  elsif math_op == 's'
    puts calcs(num1, 1, math_op)
  end

end






  