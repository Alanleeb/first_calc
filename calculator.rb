#take the first number
#take modifier
#take the last number
#puts result
#error checking
#user input and modifiers should be checked for proper input type
#- make + - * / work
#- make clear work

# call 'binding.pry'
require 'pry'
@regexnumber = /^\d+(\.\d+)?$/


def first_number()
  puts "enter a number"
  #gets the users input in the form of a string
  @num1 = gets.strip
   if @num1.match(@regexnumber)
     @num1 = @num1.to_f
    else
    puts "This is not a valid number"
    first_number
  end
end

def opperator()
  puts "enter an opperator"
  @opp = gets.strip
   if ["+", "-", "*", "/"].include?(@opp)
   else
     puts "This is not a valid opperator"
     opperator
  end
end

def next_number()
  puts "Enter another number"
  @next_num = gets.strip
  if @next_num.match(@regexnumber)
     @next_num = @next_num.to_f
   else
   puts "This is not a valid number"
   next_number
 end
end

def operation()
  case @opp
    when "+"
      @sum = @num1 + @next_num
      puts @sum
    when "-"
      @sum =  @num1 - @next_num
      puts @sum
    when "*"
      @sum = @num1 * @next_num
      puts @sum
    when "/"
      @sum = @num1 / @next_num
      puts @sum
    end

end
def continue()
  @num1
  opperator
  next_number
  operation
  puts "Would you like to continue with this problem?"
  answer = gets.strip
  if answer == "yes"
    @num1 = @sum
    continue
  elsif answer == "no"
    puts "cool, try another one"
    doit
  else
    puts "Peace out!"
    exit
  end
end

def doit()
first_number
opperator
next_number
operation
puts "Would you like to continue with this problem?"
answer = gets.strip
if answer == "yes"
  @num1 = @sum
  continue
elsif answer == "no"
  puts "cool, try another one"
  doit
else
  puts "Peace out!"
  exit
end
end
doit
