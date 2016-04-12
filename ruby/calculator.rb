=begin
def calculate(num1, oper, num2)
oper = ['+', '-', '*', '/']
if oper == oper[0]
num1.send(oper[0],num2)
end
#oper.map {|o| num1.public_send o,num2}


end

p calculate(6, '+', 9)



puts ("what operation would you like to perform? +, -, *, or /?")

=end
calculations = []
loop do

	def calc(num1, op, num2)
	  num1 = num1.to_i
	  num2 = num2.to_i
	  num1.send(op,num2)
	end

	#p calc(4, '+', 5)
	#p calc(4, '-', 5)
	#p calc(4, '*', 5)
	#p calc(4, '/', 5)

	puts ("what operation would you like to perform? Enter number then +, -, *, or /, then another num..")
	answer = gets.chomp
	if answer.empty?
		puts("you didn't write anything!")
	else
	break if answer == "done"
	answer = answer.split("")
	p answer
	p calc(answer[0],answer[2],answer[4])



	calculations << "#{answer.join('')} = #{calc(answer[0],answer[2],answer[4])}"
	p "#{calculations.length.to_s} calculations performed"


	#calculations = calculations.merge({answer.join('') => calc(answer[0],answer[2],answer[4])})
	#calculations[answer.join('')] = calc(answer[0],answer[2],answer[4])
	p calculations

	#calculations.each do |add, ans|
	#p "#{add} = #{ans}"
	#end
	p calculations
	end
end
