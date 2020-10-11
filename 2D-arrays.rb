arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

maxSum = 0
(0..3).each do |i|
    (0..3).each do |j|
        tempSum = 0

        # top
        tempSum += arr[i][j] + arr[i][j+1] + arr[i][j+2]

        # middle
        tempSum += arr[i+1][j+1]

        # bottom
        tempSum += arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]

        if tempSum > maxSum || i == 0 && j == 0
            maxSum = tempSum
        end
    end
end

puts maxSum