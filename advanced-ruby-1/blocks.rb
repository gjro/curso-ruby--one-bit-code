def method_receiving_block
    if block_given?
       return yield
    end
    puts "Bloco não foi passado" 
end

def method_receiving_block_and_parameter (name, &block)
    @name = name
    block.call
end

def method_with_block_exec_block(numbers, &block)
    if block_given?
        numbers.each do |key, value|
            block.call(key,value)
        end
    end
end


first_lambda = -> { puts "Fisrt Lambda"}

second_lambda = lambda do |numbers|
    index = 0
    puts "Numero atual + Próximo número"
    numbers.each do |number|
        return if numbers[index] == numbers.last
        puts numbers[index] + numbers[index+1]
        index += 1
    end
end

numbers = [0,1,2,3,4]

second_lambda.call(numbers)


#method_receiving_block_and_parameter("Gilberto") {puts "Hello #{@name}"}
#numbers = {2=>2, 3=>3, 4=>4}
#method_with_block_exec_block(numbers) do |key, value|
#    puts "#{key} * #{value} = #{key * value}"
#end