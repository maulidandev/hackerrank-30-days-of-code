class RangeError < StandardError
end
# Write your code here

class Calculator
    def power(n, p)
        if n < 0 or p < 0
            raise RangeError.new("n and p should be non-negative")
        end

        return n ** p
    end
end


myCalculator = Calculator.new()

t = gets.to_i

result = Array.new

for i in 1..t
    n, p = gets.split.map(&:to_i)
    begin
        ans = myCalculator.power(n, p)
        result.push ans.to_i
    rescue RangeError => e
        result.push e.message
    end
end

puts result.join("\n")