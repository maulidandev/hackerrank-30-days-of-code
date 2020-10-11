def factorial(n)
    if n > 1
        return n * factorial(n-1)
    end

    return 1
end

n = gets.to_i

result = factorial n

puts result