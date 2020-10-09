n = gets.chomp.to_i

phoneBook = Hash.new()

n.times do |i|
    names, phone = gets.chomp.split(" ")

    phoneBook[names] = phone
end

result = Array.new
loop do
    begin
        query = gets.chomp

        if phoneBook.key?(query)
            result.push "#{query}=#{phoneBook[query]}"
        else
            result.push "Not found"
        end
    rescue Interrupt
        break
    end
end

puts result.join("\n")
